class NotebooksController < ApplicationController
  def index
    client = EvernoteOAuth::Client.new(token: session[:access_token])
    note_store = client.note_store
    @notebooks = note_store.listNotebooks(session[:access_token])
  end
end
