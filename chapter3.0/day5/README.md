# Access Control
## Chapter 3, Day 5

[lesson](https://github.com/emerald-dao/beginner-cadence-course/tree/main/chapter3.0/day5)

### Quest
#### For today's quest, you will be looking at a contract and a script. You will be looking at 4 variables (a, b, c, d) and 3 functions (publicFunc, contractFunc, privateFunc) defined in SomeContract. In each AREA (1, 2, 3, and 4), I want you to do the following: for each variable (a, b, c, and d), tell me in which areas they can be read (read scope) and which areas they can be modified (write scope). For each function (publicFunc, contractFunc, and privateFunc), simply tell me where they can be called.

| Area | a | b | c | d | publicFunc() | contractFunc() | privateFunc() |
|-----:|---|---|---|---|--------------|----------------|---------------|
|    1 | RW | RW | RW | RW | X | X | X |
|    2 | RW | RO | RO | n/a | X | X | n/a |
|    3 | RW | RO | RO | n/a | X | X | n/a |
|    4 | RW | RO | n/a | n/a | X | n/a | n/a |
                                         
- RW = Read & Write scope
- RO = Read scope only
- X = Executable
- n/a = No access

[Test Contract](SomeContract.cdc)

[Test Script](SomeScript.cdc)