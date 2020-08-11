class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable,
         omniauth_providers: [:discord]

  def mod?
    mod
  end

  def oasis_member?
    oasis_member
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      bot = Discordrb::Bot.new token: ENV['BOT_TOKEN']
      oasis = bot.server(ENV['OASIS_ID'])
      member = oasis.member(auth.uid)
      if member
        user.oasis_name = member.display_name
        user.roles = member.roles.map(&:name).join("-|-")
        user.mod = user.roles.include? "Mod Team"
        user.oasis_member = user.roles.include? "Travellers"
      end
      id = User.last ? User.last.id + 1 : 1
      user.email = "oasis-user-#{id}@oasis.com"
      user.password = Devise.friendly_token[0, 20]
      user.discord_name = auth.info.name   # assuming the user model has a name
      user.image = auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end
end
