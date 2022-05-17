import SessionTrackerResource from 0x01

pub fun main(_account: Address): String {
    let ref = SessionTrackerResource.getReference(_account: _account)
    return ref.userName
}
