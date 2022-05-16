# Our First Smart Contract
## Chapter 2, Day 1

For todays quest, please load up a new Flow playground by going to https://play.onflow.org just like we did in this lesson. You will use that for writing your code.

Deploy a contract to account 0x03 called "JacobTucker". Inside that contract, declare a constant variable named is, and make it have type String. Initialize it to "the best" when your contract gets deployed.

Check that your variable is actually equals "the best" by executing a script to read that variable. Include a screenshot of the output.

---
##### Smart Contract
```text
pub contract JacobTucker {
  pub let is: String

  init() {
    self.is = "the best"
  }
}
```
##### Script
```text
import JacobTucker from 0x03

pub fun main(): String {
  return JacobTucker.is
}
```
---
#### Output
![Jacob Tucker](2-1%20screenshot.png)