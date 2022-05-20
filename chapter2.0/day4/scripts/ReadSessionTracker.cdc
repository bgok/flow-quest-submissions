import SessionTracker from 0x01

pub fun main(_account: Address): SessionTracker.Session {
    return SessionTracker.sessions[_account]!
}
