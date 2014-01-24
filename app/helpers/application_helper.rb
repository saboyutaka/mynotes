module ApplicationHelper
  EvernoteClient = EvernoteOAuth::Client.new(YAML.load(File.read('config/evernote.yml'))[Rails.env])
  def evernote_oauth_url
    session[:request_token] = EvernoteClient.request_token(oauth_callback: evernote_oauth_callback_url)
    session[:request_token].authorize_url
  end
end
