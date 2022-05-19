pub contract SessionTrackerResource {
    pub var sessions: @{Address: Session}

    pub resource interface ISession {
        pub let token: [UInt8]
        pub let userName: String
        pub var expires: UFix64
        pub let account: Address
    }

    pub resource Session: ISession {
        pub let token: [UInt8]
        pub let userName: String
        pub var expires: UFix64
        pub let account: Address

        pub fun setExpiration(_expires: UFix64) {
            self.expires = _expires
        }

        init(_token: [UInt8], _userName: String, _account: Address) {
            self.token =_token
            self.userName = _userName
            self.account = _account

            self.expires = 0.0
        }
    }

//////////////////////////////////////////////////////////////
    pub fun addSession(_token: [UInt8], _userName: String, _expires: UFix64, _account: Address) {
        let newSession <- create Session(_token: _token, _userName: _userName, _account: _account)
        newSession.setExpiration(_expires: _expires)
        let oldSession <- self.sessions[_account] <- newSession
        destroy oldSession
    }

    pub fun addSessionNoExpiration(_token: [UInt8], _userName: String, _account: Address) {
        let newSession: @Session{ISession} <- create Session(_token: _token, _userName: _userName, _account: _account)
        // newSession.setExpiration(_expires: 0.0) ////////// member of restricted type is not accessible /////////
        let oldSession <- self.sessions[_account] <- newSession
        destroy oldSession
    }
//////////////////////////////////////////////////////////////

    pub fun removeSession(_account: Address): @Session {
        let sesh <- self.sessions.remove(key: _account) ?? panic("Session not found")
        return <- sesh
    }

    pub fun getReference(_account: Address): &Session {
        return &self.sessions[_account] as &Session
    }

    init() {
        self.sessions <- {}
    }
}
