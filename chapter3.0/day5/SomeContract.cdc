access(all) contract SomeContract {
    pub var testStruct: SomeStruct

    pub struct SomeStruct {

        //
        // 4 Variables
        //
        pub(set) var a: String
        pub var b: String
        access(contract) var c: String
        access(self) var d: String

        //
        // 3 Functions
        //
        pub fun publicFunc() {}
        access(contract) fun contractFunc() {}
        access(self) fun privateFunc() {}

        pub fun structFunc() {
            /**************/
            /*** AREA 1 ***/
            /**************/

            // read
            var aa = self.a
            var bb = self.b
            var cc = self.c
            var dd = self.d

            // write
            self.a = "aa"
            self.b = "bb"
            self.c = "cc"
            self.d = "dd"

            // Function call
            self.publicFunc()
            self.contractFunc()
            self.privateFunc()
        }

        init() {
            self.a = "a"
            self.b = "b"
            self.c = "c"
            self.d = "d"
        }
    }

    pub resource SomeResource {
        pub var e: Int

        pub fun resourceFunc() {
            /**************/
            /*** AREA 2 ***/
            /**************/
            // read
            var aa = SomeContract.testStruct.a
            var bb = SomeContract.testStruct.b
            var cc = SomeContract.testStruct.c
            // var dd = SomeContract.testStruct.d // access(self) - out of scope

            // Write
            SomeContract.testStruct.a = "aaa"
            // SomeContract.testStruct.b = "bbb" // pub var - out of scope
            // SomeContract.testStruct.c = "ccc" // access(contract) - out of scope
            // SomeContract.testStruct.d = "ddd" // access(self) - out of scope

            // Function call
            SomeContract.testStruct.publicFunc()
            SomeContract.testStruct.contractFunc()
            // SomeContract.testStruct.privateFunc() // access(self) - out of scope
        }

        init() {
            self.e = 17
        }
    }

    pub fun createSomeResource(): @SomeResource {
        return <- create SomeResource()
    }

    pub fun questsAreFun() {
        /**************/
        /*** AREA 3 ****/
        /**************/
        // read
        var aa = self.testStruct.a
        var bb = self.testStruct.b
        var cc = self.testStruct.c
        // var dd = self.testStruct.d // access(self) - out of scope

        // Write
        self.testStruct.a = "aaa"
        // self.testStruct.b = "bbb" // pub var - out of scope
        // self.testStruct.c = "ccc" // access(contract) - out of scope
        // self.testStruct.d = "ddd" // access(self) - out of scope

        // Function call
        self.testStruct.publicFunc()
        self.testStruct.contractFunc()
        // self.testStruct.privateFunc() // access(self) - out of scope

    }

    init() {
        self.testStruct = SomeStruct()
    }
}