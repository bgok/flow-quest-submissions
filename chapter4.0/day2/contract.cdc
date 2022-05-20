pub contract Socials {
  pub resource interface ISharedSocialResource {
    pub var socialMedia: SocialMedia
  }

  pub struct  SocialMedia {
      pub var preferredSocialMediaAccountName: String
      pub var preferredSocialMediaSite: String


      init(name: String, preferredSite: String) {
          self.preferredSocialMediaAccountName = name
          self.preferredSocialMediaSite = preferredSite
      }
  }

  pub resource SocialsResource: ISharedSocialResource {
    pub var socialMedia: SocialMedia
    pub var alterEgo: SocialMedia

    init(socials: SocialMedia, alterEgo: SocialMedia) {
      self.socialMedia = socials
      self.alterEgo = alterEgo
    }
  }

  pub fun createResource(socialMedia: SocialMedia, alterEgo: SocialMedia): @SocialsResource {
    return <- create SocialsResource(socials: socialMedia, alterEgo: alterEgo)
  }
}
