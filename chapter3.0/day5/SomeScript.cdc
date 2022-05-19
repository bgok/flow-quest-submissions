import SomeContract from 0x01

pub fun main() {
  /**************/
  /*** AREA 4 ***/
  /**************/
    // read
    var aa = SomeContract.testStruct.a
    var bb = SomeContract.testStruct.b
    // var cc = SomeContract.testStruct.c // access(contract) - out of scope
    // var dd = SomeContract.testStruct.d  // access(self) - out of scope

    // write
    SomeContract.testStruct.a = "aa"
    // SomeContract.testStruct.b = "bb"  // pub var - out of scope
    // SomeContract.testStruct.c = "cc"  // access(contract) - out of scope
    // SomeContract.testStruct.d = "dd" // access(self) - out of scope

    // Function call
    SomeContract.testStruct.publicFunc()
    // SomeContract.testStruct.contractFunc() // access(contract) - out of scope
    // SomeContract.testStruct.privateFunc() // access(self) - out of scope

}