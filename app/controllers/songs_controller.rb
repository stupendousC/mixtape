class SongsController < ApplicationController
  def index
    songs = Song.all.sample(12)
    
    # this is to render all the info, including timestamps...
    # render :json => songs
    
    render :json => songs.as_json(only: [:id, :title, :artist, :year]), status: :ok
    
    # we used a local variable songs instead of an instance @songs this time, I think it's b/c we dont' need to erb it for display?
    # By default rails will pass the status: :OK, but you should always specify the status code. 
    # This will be esp important when we want to allow users to send POST requests that might not have the right format we are looking for.
  end
end
