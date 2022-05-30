import NonFungibleToken from 0x02
import CryptoPoops from 0x01

transaction() {
  prepare(signer: AuthAccount) {
    // Get the minter capability
    let minter: &CryptoPoops.Minter = signer.borrow<&CryptoPoops.Minter>(from: /storage/Minter)
      ?? panic("No Minter found")

    // Create the collection
    let myPoopCollection: @CryptoPoops.Collection <- CryptoPoops.createEmptyCollection() as! @CryptoPoops.Collection

    // Mint a new Token and add it to the collection
    let myPoop: @CryptoPoops.NFT <- minter.createNFT(name: "Deuce Bigalow", favouriteFood: "Pepperoni Pizza", luckyNumber: 2)
    myPoopCollection.deposit(token: <- myPoop)

    // Save the collection to account storage
    signer.save(<-myPoopCollection, to: /storage/Collection)

    // Link to the public capability of the collect in public storage
    signer.link<&CryptoPoops.Collection{CryptoPoops.CollectionPublic}>(/public/Collection, target: /storage/Collection)
  }

  execute {
  }
}
