import CryptoPoops from 0x01
import NonFungibleToken from 0x02

pub fun main(address: Address, id: UInt64): String {
  // Get the reference to the public collection
  let publicCollectionReference: &CryptoPoops.Collection{CryptoPoops.CollectionPublic} =
    getAccount(address).getCapability<&CryptoPoops.Collection{CryptoPoops.CollectionPublic}>(/public/Collection).borrow()
      ?? panic("Couldn't borrow collection")

  // Borrow the NFT with the metadata accessible
  let myNft = publicCollectionReference.borrowAuthNFT(id: id)

  // Return favorite food
  return myNft.favouriteFood
}
