    # 🧠 Escrow Smart Contract — Notes

## What is Escrow?

* A contract that holds funds until conditions are met
* Removes need for trust between parties

---

## Roles

* `depositor` → sends the money (buyer)
* `beneficiary` → receives the money (seller)
* `arbiter` → approves release of funds

---

## Funding

* Contract is funded using `payable` constructor
* ETH is locked inside the contract

---

## Approval Logic

* `approve()` releases all funds to beneficiary
* Uses `.call{value: amount}("")`

---

## Security

* Only `arbiter` can call `approve()`
* Enforced using `require(msg.sender == arbiter)`

---

## Events

* Events log important actions on blockchain
* Example: `Approved(uint amount)`
* Helps track contract activity

---

## Practice Concepts

* Defined roles (3 addresses)
* Funded contract at deployment
* Controlled payout using arbiter
* Secured function access
* Emitted event after approval

---

## One-line Summary

Escrow contract safely holds funds and releases them to the beneficiary only when the arbiter approves.
