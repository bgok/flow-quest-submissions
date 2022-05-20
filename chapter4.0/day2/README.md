# Capabilities
## Chapter 4, Day 2

[lesson](https://github.com/emerald-dao/beginner-cadence-course/tree/main/chapter4.0/day2)

### Quests

#### 1. What does .link() do?
`.link()` creates a reference to data that is in account storage. The reference can be placed in `/public/` or `/private/`. 

#### 2. In your own words (no code), explain how we can use resource interfaces to only expose certain things to the /public/ path.
When a public link to a resource is created with a resource interface, only the members and methods specified in the interface are available. This effectively limits the data and functionality that someone using the public link can access.

#### 3. Deploy a contract that contains a resource that implements a resource interface. Then, do the following:

[contract](contract.cdc)

i. In a transaction, save the resource to storage and link it to the public with the restrictive interface.

[transaction](transaction.cdc)

ii. Run a script that tries to access a non-exposed field in the resource interface, and see the error pop up.

[failure script](script1.cdc)

iii. Run the script and access something you CAN read from. Return it from the script.

[success script](script2.cdc)
