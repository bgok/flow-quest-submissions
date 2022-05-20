import Socials from 0x03

transaction() {
  prepare(signer: AuthAccount) {
    let mySocial = Socials.SocialMedia(name: "bgok", preferredSite: "twitter")
    let myAlterEgo = Socials.SocialMedia(name: "DrHorrible", preferredSite: "/r/LeagueOfEvil")

    signer.save(<- Socials.createResource(socialMedia: mySocial, alterEgo: myAlterEgo), to: /storage/SocialMedia)

    signer.link<&Socials.SocialsResource{Socials.ISharedSocialResource}>(/public/SocialMedia, target: /storage/SocialMedia)
  }

  execute {}
}