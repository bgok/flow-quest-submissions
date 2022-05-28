import ITest from 0x01

// wrong thing - Contract should implement ITest
pub contract Test: ITest {
  pub var number: Int

  pub fun updateNumber(newNumber: Int) {
    self.number = 5
  }

// Wrong thing - IStuff shouldn't be defined here.
//  pub resource interface IStuff {
//    pub var favouriteActivity: String
//  }

// wrong thing - resource should implement ITest.IStuff
  pub resource Stuff: ITest.IStuff {
  // Wrong thing - favorite is spelled incorrectly, we'll leave it alone to match the interface
    pub var favouriteActivity: String

    init() {
      self.favouriteActivity = "Playing League of Legends."
    }
  }

  // wrong thing - There isn't a way to create a Stuff resource because you can't create it from outside the of the contract

  init() {
    self.number = 0
  }
}