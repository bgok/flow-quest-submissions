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
    pre {
      number > 41: "The number is too low"
      number < 43: "The number is too high"
    }
    post {
      self.favoriteNumber != before(self.favoriteNumber): "The number didn't change"
    }
    let oldFavorite = self.favoriteNumber
    self.favoriteNumber = number
    emit numberUpdated(new: number, old: oldFavorite)
  }
}
