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
      base_api = base_api = "https://discord.com/api"
      member = HTTParty.get(base_api + "/guilds/#{ENV['OASIS_ID']}/members/#{auth.uid}", headers: {"Authorization" => "Bot #{ENV['BOT_TOKEN']}"})
      is_oasis_member = member['roles'].include?(ENV['TRAVELLER_ROLE_ID'])
      is_mod = member['roles'].include?(ENV['MOD_ROLE_ID'])
      if member['message'] == "Unknown User"
        return nil
      else
        id = User.last ? User.last.id + 1 : 1
        user.discord_name = member.dig('user', 'username')
        user.password = Devise.friendly_token[0, 20]
        user.oasis_name = member['nick']
        if user.oasis_name
          email = user.discord_name.gsub(/\W/, '') + "-" + user.oasis_name.gsub(/\W/, '') + "@oasis.com"
        else
          email = "youcantbehere-#{user.discord_name.gsub(/\W/, '')}@oasis.com"
        end
        user.email = email
        avatar_url = "https://cdn.discordapp.com/avatars/#{auth.uid}/#{member.dig('user', 'avatar')}"
        user.image = avatar_url
        user.mod = is_mod
        user.oasis_member = is_oasis_member
      end
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end
end
