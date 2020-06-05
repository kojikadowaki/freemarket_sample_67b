# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    authorization
  end

  def facebook
    authorization
  end

  def twitter
    authorization
  end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  def failure
    redirect_to root_path
  end

  protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end

  def authorization
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
    else
      password = Devise.friendly_token
      @user.password              = password
      @user.password_confirmation = password
      session['devise.regist_data'] = { user: @user.attributes }
      session['devise.regist_data'][:user][:password] = password
      @profile = Profile.new
      render template: 'devise/registrations/new_profile'
    end
  end
end
