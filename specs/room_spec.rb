require("minitest/autorun")
require("minitest/rg")

require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")


class RoomTest < MiniTest::Test

  def setup()

    @room1 = Room.new("Hampden")

    @guest1 = Guest.new("Ricky", 50, "Ruby Tuesday")
    @guest2 = Guest.new("Jane", 60, "Girls just wanna have fun")
    @guest3 = Guest.new("Emma", 40, "Firework")
    @guest4 = Guest.new("Rob", 50, "My way")

    @song1 = Song.new("Ruby", "Kaiser Chiefs", "Ruby Ruby Ruby")
    @song2 = Song.new("Firework", "Katy Perry", "Baby you're a firework")
  end

  def test_room_name
    assert_equal("Hampden", @room1.name)
  end

end #end of class
