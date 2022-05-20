import Socials from 0x03

pub fun main(address: Address): Socials.SocialMedia {
    let publicCapability: Capability<&Socials.SocialsResource{Socials.ISharedSocialResource}> =
        getAccount(address).getCapability<&Socials.SocialsResource{Socials.ISharedSocialResource}>(/public/SocialMedia)

    let resource: &Socials.SocialsResource{Socials.ISharedSocialResource} = publicCapability.borrow()!

    return resource.socialMedia
}