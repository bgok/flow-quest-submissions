# Creating an NFT Contract: Collections (Part 1/3)
## Chapter 4, Day 3

[lesson](https://github.com/emerald-dao/beginner-cadence-course/tree/main/chapter4.0/day3)

### Quest

#### 1. Why did we add a Collection to this contract? List the two main reasons.

The collection resource gives us a place to store multiple NFTs and allows NFTs to be added to the collection by other accounts.

#### 2. What do you have to do if you have resources "nested" inside of another resource? ("Nested resources")

When you have nested resources, the parent resource needs to have a `destroy()` function that destroys the child resources.

#### 3. Brainstorm some extra things we may want to add to this contract. Think about what might be problematic with this contract and how we could fix it.

**How do we charge someone to mint an NFT?**
We haven't covered fungible tokens yet, so this is my speculation: FTs are handled by a resource similar to the collection resource (let's call it a wallet resource). It has a public `receive()` function that anyone can call to send tokens to our account and the balance is publicly viewable (or not :shrug:). The send function can only be accessed by the account owner.

Since Flow is the native token of the blockchain, I'm not sure whether it need to be handled differently from other fungible tokens. I expect that it does. It can probably be handled by a wallet resource that abstracts FTs and Flow so that they have the same interface. This allows the rest of the contract to handle the native FLOW token and FTs interchangeably.

**If we want to read information about our NFTs inside our Collection, right now we have to take it out of the Collection to do so. Is this good?** 

No. Not good. Not good at all. We should be able to borrow a read-only reference to the NFT in question from the collection resource.