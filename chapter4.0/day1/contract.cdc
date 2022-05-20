pub contract Socials {
  pub struct  SocialMedia {
      pub var preferredSocialMediaAccountName: String
      pub var preferredSocialMediaSite: String

      init(name: String, preferredSite: String) {
          self.preferredSocialMediaAccountName = name
          self.preferredSocialMediaSite = preferredSite
      }

  }

  pub resource SocialsResource {
    pub var socialMedia: SocialMedia

    init(socials: SocialMedia) {
      self.socialMedia = socials
    }
  }

  pub fun createResource(socialMedia: SocialMedia): @SocialsResource {
    return <- create SocialsResource(socials: socialMedia)
  }
}
