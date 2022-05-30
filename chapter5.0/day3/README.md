# Creating an NFT Contract: Implementing the NonFungibleToken Standard (Part 3/3)
## Chapter 5, Day 3

[lesson](https://github.com/emerald-dao/beginner-cadence-course/tree/main/chapter5.0/day3)

### Quests

#### 1. What does "force casting" with as! do? Why is it useful in our Collection?
Force casting allows us to use a more specific interface in a place where a more generic interface is required. This is useful because it allows the customized metadata fields to be exposed while still adhering to the interface. 

#### 2. What does auth do? When do we use it?
`auth` essentially allows downcasting of references. It authorizes more access than a generic reference would normally allow.


#### 3. This last quest will be your most difficult yet.
Yeah? Well I'm not scared. I got this. 😤

[CryptoPoops Contract](./CryptoPoops.cdc)

[Transaction that creates a collection and mints a token to it](./CreateCollectionAndMintToken.cdc)

[Script that retrieves Fave Food field from the public collection](./RetrieveFavoriteFoodFromPublicCollection.cdc)

😅 That was harder than I expected. It took a while to get the fiddly bits right.

![Thanks for the fantastic tutorial](./that's%20all%20folks.jpeg)