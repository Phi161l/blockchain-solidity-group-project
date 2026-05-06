# 🧠 Voting Smart Contract — Notes

## What is this system?

* A decentralized voting system on Ethereum
* Users vote on proposals
* Votes decide whether actions get executed

---

## Core Idea

* Proposal = action stored on-chain (target + calldata)
* Members vote YES or NO
* If enough YES votes → proposal is executed automatically

---

## Proposal Structure

* `target` → contract address to call
* `data` → encoded function call (calldata)
* `yesCount` / `noCount` → vote tracking
* `executed` → prevents double execution

---

## Voting Logic

* Users can vote YES or NO
* Votes are stored and counted on-chain
* Optional: allow vote updates (change decision)

---

## Access Control

* Only members can vote/create proposals
* Membership stored using mapping (whitelist system)

---

## Events

* `ProposalCreated` → logs new proposal
* `VoteCast` → logs each vote
* Used for transparency and tracking

---

## Execution Logic

* If `yesCount >= threshold`:

  * Proposal is executed
  * Smart contract calls target using `.call(data)`
* Execution happens only once

---

## Key Concepts Used

* Structs (Proposal model)
* Arrays (store proposals)
* Mappings (members + voting tracking)
* Calldata encoding (function calls)
* Events (logging actions)
* Access control (onlyMember modifier)

---

## Security Rules

* Prevent unauthorized voting
* Prevent double execution
* Track voting state per user

---

## One-line Summary

A DAO-style voting system where members vote on proposals and smart contracts execute decisions automatically when consensus is reached.
