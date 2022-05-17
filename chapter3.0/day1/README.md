# Resources
## Chapter 3, Day 1

[lesson](https://github.com/emerald-dao/beginner-cadence-course/tree/main/chapter3.0/day1)

### Quests

#### 1. In words, list 3 reasons why structs are different from resources.
1. A resource can only exist in one place. It can't be copied. Instead it must be moved.
2. Resources can't be overwritten.
3. Resources can only be created in a smart contract.

#### 2. Describe a situation where a resource might be better to use than a struct.
Data that represents value (or is inherently valuable) need extra care when it is being handled. By storing it as a resource, the programmer is assured that it won't accidentally be overwritten, modified, deleted, or copied.

#### 3. What is the keyword to make a new resource?
`create`

#### 4. Can a resource be created in a script or transaction (assuming there isn't a public function to create one)?
`no`

#### 5. What is the type of the resource below?
```text
pub resource Jacob {

}
```
`@Jacob`

#### 6. Let's play the "I Spy" game from when we were kids. I Spy 4 things wrong with this code. Please fix them.
Here's the corrected code:
```text
pub contract Test {
    pub resource Jacob {
        pub let rocks: Bool
        init() {
            self.rocks = true
        }
    }

    pub fun createJacob(): @Jacob {
        let myJacob <- create Jacob()
        return <- myJacob
    }
}
```