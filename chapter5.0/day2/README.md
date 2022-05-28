# Contract Interfaces
## Chapter 5 Day 2
[lesson](https://github.com/emerald-dao/beginner-cadence-course/tree/main/chapter5.0/day2)
### Quests
#### 1. Explain why standards can be beneficial to the Flow ecosystem.
Standards are valuable for a few reasons. Here are a couple:
1. Standards enable broad interaction between contracts. For example, NFT marketplaces should be able to handle any NFT without requiring code to be written or changed.
2. They provide a blueprint for implementing a type of solution, making the solution more robust and easier to implement correctly. For example, if I am creating an NFT, it is great to have an interface and standards doc that spells out everything that an NFT implementation need to function well.
#### 2. What is YOUR favourite food?
Steak
#### 3. Please fix this code (Hint: There are two things wrong):
There is nothing wrong with the provided code. I see only an interface and similarly named class that doesn't implement the interface. 😝

Ok, ok, I'll make the class implement the interface. I found more than 2 things wrong with the code. They are documented inline in the .cdc files linked below. Based on the topic of lesson, these are the ones I think you are looking for:

1. The IStuff interface shouldn't be implemented in the class `Test`. Instead the IStuff interface defined in ITest should be used.
2. In ITest, `Stuff` should implement `IStuff`

[Updated ITest](ITest.cdc)

[Updated Contract](Test.cdc)
