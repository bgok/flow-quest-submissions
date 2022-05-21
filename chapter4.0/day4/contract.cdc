//
// CryptoPoops A contract the implements the CyptoPoops NFT
//
pub contract CryptoPoops {
  //
  // totalSupply The total number of NFTs in this collection
  //
  pub var totalSupply: UInt64

  //
  // resource NFT Address NFT resource that contains a name, favouriteFood, and luckyNumber
  //
  pub resource NFT {
    pub let id: UInt64

    //
    // Metadata
    //
    pub let name: String
    // This NFT contains several misspellings of the word `favorite`
    pub let favouriteFood: String
    pub let luckyNumber: Int

    //
    // init Initialize the NFT with metadata
    //
    init(_name: String, _favouriteFood: String, _luckyNumber: Int) {
      self.id = self.uuid

      self.name = _name
      // I know this is how Canadians spell it.
      // Don't worry, I love everything about Canadians, from A to Zed. :)
      self.favouriteFood = _favouriteFood
      self.luckyNumber = _luckyNumber
    }
  }

  //
  // CollectionPublic A resource interface that limits the Collection functions that can be called by anyone
  //
  pub resource interface CollectionPublic {
    pub fun deposit(token: @NFT)
    pub fun getIDs(): [UInt64]
    pub fun borrowNFT(id: UInt64): &NFT
  }

  //
  // Collection A resource that stores a collection of CryptoPoops
  //
  pub resource Collection: CollectionPublic {
    pub var ownedNFTs: @{UInt64: NFT}

    //
    // deposit() A public function that allows anyone to deposit CryptoPoops in this collection (ew)
    //
    pub fun deposit(token: @NFT) {
      self.ownedNFTs[token.id] <-! token
    }

    //
    // withdraw() A function that allows the collection's owner to remove NFTs from the collection
    //
    pub fun withdraw(withdrawID: UInt64): @NFT {
      let nft <- self.ownedNFTs.remove(key: withdrawID)
              ?? panic("This NFT does not exist in this Collection.")
      return <- nft
    }

    //
    // getIDs() A public function that gets the IDs of the NFTs in this collection
    //
    pub fun getIDs(): [UInt64] {
      return self.ownedNFTs.keys
    }

    //
    // borrowNFT() A public function that borrows a pointer to an NFT in this collection
    //
    pub fun borrowNFT(id: UInt64): &NFT {
      return &self.ownedNFTs[id] as &NFT
    }

    //
    // init() Initialize the collection
    //
    init() {
      self.ownedNFTs <- {}
    }

    //
    // destroy() Destroy the NFTs in this collection
    //
    destroy() {
      destroy self.ownedNFTs
    }
  }

  //
  // createEmptyCollection() Create a collection resource and return it
  //
  pub fun createEmptyCollection(): @Collection {
    return <- create Collection()
  }

  //
  // Minter A resource allows it's owner to mint CryptoPoops
  //
  pub resource Minter {

    //
    // createNFT() Create a new CryptoPoops
    //
    pub fun createNFT(name: String, favouriteFood: String, luckyNumber: Int): @NFT {
      return <- create NFT(_name: name, _favouriteFood: favouriteFood, _luckyNumber: luckyNumber)
    }

    //
    // createMinter() Create a new minter resource that grants its owner permission to mint new CryptoPoops
    //
    pub fun createMinter(): @Minter {
      return <- create Minter()
    }

  }

  //
  // init() Intialize the NFT contract and save the minter resource
  //
  init() {
    self.totalSupply = 0
    self.account.save(<- create Minter(), to: /storage/Minter)
  }
}