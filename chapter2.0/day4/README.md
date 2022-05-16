# Basic Structs
## Chapter 2 Day 4

[lesson](https://github.com/emerald-dao/beginner-cadence-course/tree/main/chapter2.0/day4)

## Quests
#### 1. Deploy a new contract that has a Struct of your choosing inside of it (must be different than Profile).
#### 2. Create a dictionary or array that contains the Struct you defined.
#### 3. Create a function to add to that array/dictionary.
```text
pub contract SessionTracker {
    pub var sessions: {Address: Session}
    
    pub struct Session {
        pub let token: [UInt8]
        pub let userName: String
        pub let expires: UFix64
        pub let account: Address

        // You have to pass in 4 arguments when creating this Struct.
        init(_token: [UInt8], _userName: String, _expires: UFix64, _account: Address) {
            self.token =_token
            self.userName = _userName
            self.expires = _expires
            self.account = _account
        }
    }

    pub fun addSession(_token:[UInt8], _userName: String, _expires: UFix64, _account: Address) {
        let newSession = Session(_token: _token, _userName: _userName, _expires: _expires, _account: _account)
        self.sessions[_account] = newSession
    }

    init() {
        self.sessions = {}
    }

}
```
#### 4. Add a transaction to call that function in step 3.
```text
import SessionTracker from 0x01

transaction(_tokenHex: String, _userName: String, _account: Address) {
    prepare(signer: AuthAccount) {}

    execute {
        // dev environment doesn't support getCurrentBlock(), so hardcoded instead
        // let expires: UFix64 = getCurrentBlock().timestamp + 3600.0
        let expires: UFix64 = 1672531199.0
        let token: [UInt8] = _tokenHex.decodeHex()
        SessionTracker.addSession(_token: token, _userName: _userName, _expires: expires, _account: _account)
        log("Session added")
    }
}
```
#### 5. Add a script to read the Struct you defined.
```text
import SessionTracker from 0x01

pub fun main(_account: Address): SessionTracker.Session {
    return SessionTracker.sessions[_account]!
}
```
Result:
```json
{
  "type": "Struct",
  "value": {
    "id": "A.0000000000000001.SessionTracker.Session",
    "fields": [
      {
        "name": "token",
        "value": {
          "type": "Array",
          "value": [
            {
              "type": "UInt8",
              "value": "222"
            },
            {
              "type": "UInt8",
              "value": "173"
            },
            {
              "type": "UInt8",
              "value": "190"
            },
            {
              "type": "UInt8",
              "value": "239"
            }
          ]
        }
      },
      {
        "name": "userName",
        "value": {
          "type": "String",
          "value": "bgok"
        }
      },
      {
        "name": "expires",
        "value": {
          "type": "UFix64",
          "value": "1672531199.00000000"
        }
      },
      {
        "name": "account",
        "value": {
          "type": "Address",
          "value": "0x0000000000000003"
        }
      }
    ]
  }
}```
