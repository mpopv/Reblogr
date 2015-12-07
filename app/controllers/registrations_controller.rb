class RegistrationsController < Devise::RegistrationsController
  # your approach is perfectly fine, but I just wanted to point out there's a
  # slightly simpler way to do this, based on devise official docs:
  # https://github.com/plataformatec/devise#strong-parameters
  private

  def sign_up_params
    params.require(:user).permit(:username, :photo_url, :header_url, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username, :photo_url, :header_url, :email, :password, :password_confirmation, :current_password)
  end

end
