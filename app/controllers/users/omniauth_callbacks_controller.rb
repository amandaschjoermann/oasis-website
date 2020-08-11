class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def discord
    auth = request.env["omniauth.auth"]
    @user = User.from_omniauth(auth)

    if @user.oasis_member?
      sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
      # set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
    else
      flash[:alert] = "You're not a member of ACNH The Oasis"
      redirect_to no_member_zone_path
    end
  end

  def failure
    redirect_to root_path
  end
end
