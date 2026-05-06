# 🧠 Voting Smart Contract — Notes

## What is this system?

* A decentralized voting system on Ethereum
* Users create proposals and vote YES or NO
* If a proposal passes, the contract executes the action automatically
* Built incrementally across `Voting1.sol`, `Voting2.sol`, ...

---

## Core Idea

* A **proposal** is an action stored on-chain (a contract call described by `target` + `data`)
* Members vote on whether that action should happen
* If consensus is reached, the contract performs the call itself
* No central authority — the contract is the executor

---

## Proposal Struct

```solidity
struct Proposal {
    address target;   // contract to call
    bytes   data;     // encoded function + args (calldata)
    uint    yesCount; // YES votes
    uint    noCount;  // NO votes
}
```

* `target` + `data` together describe **any** function call on **any** contract
* `data` is generated off-chain using `abi.encodeWithSignature(...)` or `abi.encodeCall(...)`
* Counters start at 0 and are mutated by `castVote`

---

## Storing Proposals

* Held in a public dynamic array: `Proposal[] public proposals;`
* Solidity auto-generates a getter — `proposals(uint)` returns the struct fields
* Proposal ID = its index in the array
* Anyone can call `newProposal(target, data)` to append one

See [Voting1.sol:23-32](4.%20Applied%20Solidity/Voting/Voting1.sol#L23-L32).

---

## Voting Logic (`castVote`)

```solidity
function castVote(uint proposalId, bool support) external {
    Proposal storage p = proposals[proposalId];
    if (support) p.yesCount++;
    else         p.noCount++;
}
```

* `storage` reference — writes go directly back to state
* If we used `memory`, the increment would happen on a copy and be lost
* `support` is a `bool` flag instead of two separate functions → smaller surface area

See [Voting2.sol:24-32](4.%20Applied%20Solidity/Voting/Voting2.sol#L24-L32).

---

## storage vs memory (key gotcha)

| Keyword   | Behavior                          | Use when                |
| --------- | --------------------------------- | ----------------------- |
| `storage` | Reference to state — writes stick | Mutating struct fields  |
| `memory`  | In-RAM copy — writes are local    | Read-only computation   |
| `calldata`| Read-only function input          | Cheaper than `memory`   |

Forgetting `storage` is one of the most common Solidity bugs.

---

## Calldata Encoding

* `target` is *where* to call, `data` is *what* to call
* Off-chain: `abi.encodeWithSignature("transfer(address,uint256)", to, amount)`
* On-chain execution: `target.call(data)`
* This pattern lets one voting contract govern any other contract

---

## Planned: Access Control

* Restrict `newProposal` / `castVote` to members
* Membership tracked via `mapping(address => bool) members`
* Enforced with an `onlyMember` modifier
* Prevent one address voting twice → `mapping(uint => mapping(address => bool)) hasVoted`

---

## Planned: Execution Logic

* Once `yesCount >= threshold`:
  * `(bool ok, ) = p.target.call(p.data);`
  * `require(ok, "call failed");`
* Mark `executed = true` on the proposal to block replays
* Add `executed` field to the struct when this step is built

---

## Planned: Events

| Event             | Purpose                          |
| ----------------- | -------------------------------- |
| `ProposalCreated` | Index new proposals off-chain    |
| `VoteCast`        | Track who voted and how          |
| `ProposalExecuted`| Confirm an action ran            |

* Cheaper than storage for history
* Lets frontends/indexers reconstruct state without scanning the array

---

## Key Concepts Used

* **Structs** — group related fields (`Proposal`)
* **Dynamic arrays** — `proposals.push(...)`
* **Mappings** (planned) — membership and vote tracking
* **Calldata encoding** — generic on-chain function calls
* **Storage references** — mutate state in place
* **Modifiers** (planned) — reusable access checks

---

## Security Checklist

* [ ] One vote per member per proposal
* [ ] Only members can create / vote
* [ ] Proposals execute at most once
* [ ] Check return value of low-level `.call`
* [ ] Consider reentrancy when executing arbitrary `target.call(data)`

---

## One-line Summary

A DAO-style voting system where members vote on proposals and the contract executes the agreed-upon action automatically when consensus is reached.
