# Account Storage
## Chapter 4, Day 1

[lesson](https://github.com/emerald-dao/beginner-cadence-course/tree/main/chapter4.0/day1)

### Quest
#### 1. Explain what lives inside of an account.
An account contains 3 data storage areas that can be used to store resources that represent assets like fungible tokens, NFTs, smart contracts, and other data related to the execution of smart contracts.

#### 2. What is the difference between the /storage/, /public/, and /private/ paths?
- `/public/` is used to store data that can be referenced by any account in a transaction
- `/private/` is where private/unshared data is stored
- `/storage/` is used to store sharable data

#### 3. What does .save() do? What does .load() do? What does .borrow() do?
- `.save()` saves data to a named path in storage
- `.load()` moves data from storage into the execution context
- `.borrow()` gets a reference to data in storage

#### 4. Explain why we couldn't save something to our account storage inside of a script.
Scripts don't have access to a 'signer', so they can't provide the signature required to verify the identity of the person executing the script.

#### 5. Explain why I couldn't save something to your account.
Only the owner of an acount is allowed to update the data stored in the account. If you can't provide a signature from the account that owns the data, you can't update its data. 

#### 6. Define a contract that returns a resource that has at least 1 field in it. Then, write 2 transactions:

[contract](contract.cdc)

##### A transaction that first saves the resource to account storage, then loads it out of account storage, logs a field inside the resource, and destroys it.

[script #1](script1.cdc)

##### A transaction that first saves the resource to account storage, then borrows a reference to it, and logs a field inside the resource.

[script #2](script2.cdc)