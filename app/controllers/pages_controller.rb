class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:no_member_zone]
  def home
  end

  def login
    render layout: "login"
  end

  def no_member_zone
    render layout: "login"
  end

  def tips
  end

  def test
  end

  def rules
    @rules = [
      { icon: "https://discordapp.com/assets/68546f5fc3b2166f42cf90b7e23c5ae9.svg", title: "Respect all server members at all times. ", description: "This includes posts on public channels, DMs, and interacting with other players on an island. (Ask the host before doing something you are unsure of – Ex: picking flowers, exploring the island, shopping, etc…)" },
      { icon: "https://discordapp.com/assets/eb29ce5fcf54bc3b23ff77039a4ecf3c.svg", title: "You must follow all/any Moderator instructions within a reasonable time-frame.", description: "If you disagree with a rule or instruction, you may discuss your concern with a Moderator or Mod Lead in private, or suggest a rule change politely in the 📮suggestions-box channel. If you have concerns regarding your treatment via a Moderator, contact a Mod Lead privately."},
      { icon: "https://discordapp.com/assets/67f896405747f26f63f09e0cb048d358.svg", title: "This list of rules is not all-inclusive and is subject to change.", description: "Some channels may have additional rules that you can find via pinned messages. Channel-specific rules may be stricter than the server rules, so please check them before posting in a channel you are unfamiliar with. Any new server rules/changes will be announced to everyone on the server."},
      { icon: "https://discordapp.com/assets/09fe8a2882cac4cdb4712ab9622d3fe1.svg", title: "We do not allow for vigilante justice or witch hunts.", description: "Report any users that you believe to have broken a rule to a Moderator through a Private Message (PM)."},
      { icon: "https://discordapp.com/assets/5575865e2cb3d50ea051b09d7e1d2550.svg", title: "This is a family-friendly, safe-for-work discord.", description: "As such, any illegal, violent, sexual, racial, or derogatory language, imagery, or activity will not be tolerated and could be subject to a ban without notice. Cursing IS allowed in moderation, provided it is not directed at others or used in a derogatory fashion. If a language/context/image upsets you for any reason, please bring it to the attention of the mod team. These will be handled on a case-by-case basis."},
      { icon: "https://discordapp.com/assets/f8b3e0e54d99d2b2962a2e474b2110e4.svg", title: "This server does not allow for public advertising of any kind.", description: "This includes advertising other Discord servers, products/services unrelated to ACNH, posts made for personal gain (aka – no real money transactions), or anything that goes against Nintendo’s or Discord’s TOS."},
      { icon: "https://discordapp.com/assets/c5ef2ff553f9cecd81add57e79aaf81d.svg", title: "Asking for Tips or Entry Fees is not allowed on any channel in the server.", description: "This includes posts that sound like “Tips appreciated, but not required” or like “Will tip anyone who comes over to water for me”. The former is a slippery slope towards psychologically pressuring people to tip, while the latter can unfairly attract people to your island over others. There is also a blanket ban on trading of all currency (bells, NMT) on the server, as per our no tips and no fees policy."},
      { icon: "https://discordapp.com/assets/71de2e3efd19455f1c63b9bd00329ec5.svg", title: "Tipping the host privately IS allowed.", description: "We want tipping to be about giving, not about expecting, hence Rule #7. If you would like, the 💌wishlists channel can be used to indicate what things you are looking for, and to search for what others are too! (Just please do not openly advertise your wishlist on posts.)"},
      { icon: "https://discordapp.com/assets/488cb48b4a6952b728df8bbe99fdbb20.svg", title: "Trading of items/services is only allowed on specific channels.", description: "Check channels’ pinned messages for rules on trading in them. Note that giveaways are acceptable in appropriate channels, and can be done in 2 directions. For example: someone may ask if a host would like any watering performed for them while they are visiting to collect a DIY. The host, however, may not request this as a condition for collecting the DIY."},
      { icon: "https://discordapp.com/assets/5e1630b749695f21d61dcf55fc09c2b6.svg", title: "Using the minus button while on someone else’s island is strictly prohibited.", description: "Only the host is allowed to use the minus button to end the session for all players. If you need to leave a host’s island, you must leave via the airport."}
    ]
  end
end
