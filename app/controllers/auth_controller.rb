class AuthController < ApplicationController
  def evernote
    request_token = session[:request_token]
    access_token = request_token.get_access_token(oauth_verifier: params[:oauth_verifier])
    session[:access_token] = access_token.token
    redirect_to root_path
  end

  def reset
    reset_session
    redirect_to root_path
  end
end
