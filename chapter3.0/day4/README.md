# Resource/Struct Interfaces
## Chapter 3, Day 4
[lesson](https://github.com/emerald-dao/beginner-cadence-course/tree/main/chapter3.0/day4)

### Quests
#### 1. Explain, in your own words, the 2 things resource interfaces can be used for (we went over both in today's content)

1. Interfaces can be used to define the functions and variable required in the implementation of a resource.
2. Interface can also be used to define which functions and variables are exposed to outside functions.

#### 2. Define your own contract. Make your own resource interface and a resource that implements the interface. Create 2 functions. In the 1st function, show an example of not restricting the type of the resource and accessing its content. In the 2nd function, show an example of restricting the type of the resource and NOT being able to access its content.

[code](contracts/SessionTrackerResource.cdc)

#### 3. How would we fix this code?
```
///////////////////////////////////////////////////////////////////
// pub var favouriteFruit: String // <-- delete this
pub fun changeGreeting(newGreeting: String): String  // <- Add this
///////////////////////////////////////////////////////////////////
```
[complete source file](contracts/Stuff.cdc)
