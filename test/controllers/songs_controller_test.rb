require "test_helper"

describe SongsController do
  it "must get index" do
    get songs_path
    must_respond_with :success
  end
  
  it "must return JSON of 12 random songs" do
    # idk how to do this...
  end
  
end
