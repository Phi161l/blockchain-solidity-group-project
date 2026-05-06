# 🧠 Address Interaction — Sending Ether

## Address Basics

* `address` represents a wallet or contract
* `msg.sender` = the caller of the function
* Used to track ownership

---

## Receiving Ether

* Contracts can receive ETH using:

  * `receive()` → triggered when no calldata
* Must use `payable`

---

## Sending Ether

* Use `.call{value: amount}("")` to send ETH
* Returns `(success, data)`
* Always check with `require(success)`

---

## Managing Funds

* `msg.value` → ETH sent in a transaction
* `address(this).balance` → contract balance
* Can forward ETH to another address (e.g., owner or charity)

---

## Self Destruct

* `selfdestruct(address)` → deletes contract
* Sends all remaining ETH to given address

---

## Practice Concepts

* Stored owner address
* Received ETH in contract
* Sent ETH to owner
* Donated full balance to charity
* Destroyed contract and transferred funds

---

## One-line Summary

Contracts can receive, store, send, and manage ETH using addresses and payable functions.
