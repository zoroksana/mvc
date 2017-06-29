class OumniauthCallbacksController < Devise::OumniauthCallbacksController
  def all
    #user= User.from_oumniauth(request_env ["oumniauth.auth"])
    raise request_env ["oumniauth.auth"].to_yaml
  end
  alias_method :facebook, :all
end
