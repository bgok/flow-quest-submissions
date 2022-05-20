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