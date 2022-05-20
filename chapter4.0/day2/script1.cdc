import Socials from 0x03

pub fun main(address: Address): Socials.SocialMedia {
    let publicCapability: Capability<&Socials.SocialsResource> =
        getAccount(address).getCapability<&Socials.SocialsResource>(/public/SocialMedia)

    let resource: &Socials.SocialsResource = publicCapability.borrow()! // Error unexpectedly found nil while forcing an Optional value

    return resource.socialMedia
}
