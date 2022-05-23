// Is there a way to confirm that an event was emitted in Flow playground?

pub contract Chatty {
  pub event deployed()
  pub event numberUpdated(new: Int, old: Int)

  pub var favoriteNumber: Int

  init() {
    self.favoriteNumber = 0
    emit deployed()
  }

  pub fun updateFavoriteNumber(number: Int) {
    let oldFavorite = self.favoriteNumber
    self.favoriteNumber = number
    emit numberUpdated(new: number, old: oldFavorite)
  }
}
