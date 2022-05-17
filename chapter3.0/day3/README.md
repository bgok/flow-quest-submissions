# References
## Chapter3, Day 3
[lesson](https://github.com/emerald-dao/beginner-cadence-course/tree/main/chapter3.0/day3)

### Quest
#### 1. Define your own contract that stores a dictionary of resources. Add a function to get a reference to one of the resources in the dictionary.
[contract](contracts/SessionTrackerResource.cdc)

#### 2. Create a script that reads information from that resource using the reference from the function you defined in part 1.
[script](scripts/GetSession.cdc)

#### 3. Explain, in your own words, why references can be useful in Cadence.
References make it easier to pass read access to structs and resources without having to move the resource. 