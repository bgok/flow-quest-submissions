pub contract Stuff {

    pub struct interface ITest {
      pub var greeting: String
      ///////////////////////////////////////////////////////////////////
      // pub var favouriteFruit: String // <-- delete this
      pub fun changeGreeting(newGreeting: String): String  // <- Add this
      ///////////////////////////////////////////////////////////////////
    }

    pub struct Test: ITest {
      pub var greeting: String

      pub fun changeGreeting(newGreeting: String): String {
        self.greeting = newGreeting
        return self.greeting // returns the new greeting
      }

      init() {
        self.greeting = "Hello!"
      }
    }

    pub fun fixThis() {
      let test: Test{ITest} = Test()
      let newGreeting = test.changeGreeting(newGreeting: "Bonjour!")
      log(newGreeting)
    }
}