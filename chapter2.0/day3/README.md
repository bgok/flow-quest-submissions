# Arrays, Dictionaries, and Optionals
## Chapter 2, Day 3
[lesson](https://github.com/emerald-dao/beginner-cadence-course/tree/main/chapter2.0/day3)

### Quest
#### 1. In a script, initialize an array (that has length == 3) of your favourite people, represented as Strings, and log it.

```text
let favoritePeople: [String] = ["my dog", "Bigfoot", "Bloo"]
log(favoritePeople)
```

#### 2. In a script, initialize a dictionary that maps the Strings Facebook, Instagram, Twitter, YouTube, Reddit, and LinkedIn to a UInt64 that represents the order in which you use them from most to least. For example, YouTube --> 1, Reddit --> 2, etc. If you've never used one before, map it to 0!

```text
let socials: {String: UInt64} = {
    "Facebook": 65535, 
    "Instagram": 10000,
    "Twitter": 2,
    "YouTube": 1,
    "Reddit": 3,
    "LinkedIn": 4
}
```

#### 3. Explain what the force unwrap operator ! does, with an example different from the one I showed you (you can just change the type).

The force unwrap operator converts an optional value to its base type, or panics and aborts if it is nil. For example:
```text
var age: Int? = 57
var unwrappedAge: Int = age! // unwrapped age is 57

var age2: Int? = nil
var unwrappedAge2: Int = age! // Panic and abort
```

#### 4. Using this picture below, explain...
![](https://raw.githubusercontent.com/emerald-dao/beginner-cadence-course/main/chapter2.0/images/wrongcode.png)

**What the error message means?**
A string is expected, but an optional string was provided.

**Why we're getting this error?**
The dictionary lookup returns an optional string. The function definition expects to return a string that is not optional.

**How to fix it:**
Either change the return type on main() to `String?` or unwrap the the dictionary lookup with the `!` operator.