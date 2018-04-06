require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class SongTest < MiniTest::Test

  def setup()

    @song1 = Song.new("Ruby", "Kaiser Chiefs", "Ruby, Ruby, Ruby")#instance of song class

  end

  def test_song_title
    assert_equal("Ruby", @song1.title)
  end

end #end of class
