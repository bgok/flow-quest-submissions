pub contract SessionTrackerResource {
    pub var sessions: @{Address: Session}

    pub resource Session {
        pub let token: [UInt8]
        pub let userName: String
        pub let expires: UFix64
        pub let account: Address

        init(_token: [UInt8], _userName: String, _expires: UFix64, _account: Address) {
            self.token =_token
            self.userName = _userName
            self.expires = _expires
            self.account = _account
        }
    }

    pub fun addSession(_token: [UInt8], _userName: String, _expires: UFix64, _account: Address) {
        let newSession <- create Session(_token: _token, _userName: _userName, _expires: _expires, _account: _account)
        let oldSession <- self.sessions[_account] <- newSession
        destroy oldSession
    }

    pub fun removeSession(_account: Address): @Session {
        let sesh <- self.sessions.remove(key: _account) ?? panic("Session not found")
        return <- sesh
    }

//////////////////////////////////////////////////////////////
    pub fun getReference(_account: Address): &Session {
        return &self.sessions[_account] as &Session
    }
//////////////////////////////////////////////////////////////

    init() {
        self.sessions <- {}
    }
}
