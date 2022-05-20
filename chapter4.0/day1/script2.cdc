import Socials from 0x03

transaction() {
  prepare(signer: AuthAccount) {
    let mySocial = Socials.SocialMedia(name: "bgok", preferredSite: "twitter")
    signer.save(<- Socials.createResource(socialMedia: mySocial), to: /storage/SocialMedia)

    let myRetrievedSocials = signer.borrow<&Socials.SocialsResource>(from: /storage/SocialMedia)!

    log(myRetrievedSocials.socialMedia.preferredSocialMediaAccountName)
  }

  execute {}
}