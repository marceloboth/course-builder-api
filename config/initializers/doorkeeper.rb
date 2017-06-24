Doorkeeper.configure do
  orm :active_record

  use_refresh_token

  resource_owner_from_credentials do
    user = User.find_by(username: params[:username])
    user.authenticate(params[:password]) if user
  end

  access_token_expires_in 2.hours
 end

Doorkeeper.configuration.token_grant_types << "password"
