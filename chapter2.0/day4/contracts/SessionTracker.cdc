pub contract SessionTracker {
    pub var sessions: {Address: Session}

    pub struct Session {
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

    pub fun addSession(_token:[UInt8], _userName: String, _expires: UFix64, _account: Address) {
        let newSession = Session(_token: _token, _userName: _userName, _expires: _expires, _account: _account)
        self.sessions[_account] = newSession
    }

    init() {
        self.sessions = {}
    }
}