require("minitest/autorun")
require("minitest/rg")

require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")


class RoomTest < MiniTest::Test

  def setup()

    @room1 = Room.new("Hampden", 3)

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

  def test_check_number_guests
    assert_equal(0, @room1.check_number_of_guests_in_room())
  end

  def test_check_in_guest
    assert_equal(1, @room1.check_in_guest(@guest1))
  end

  def test_check_out_guest
    @room1.check_in_guest(@guest1)
    assert_equal(0, @room1.check_out_guest(@guest1))
  end

  def test_check_number_of_songs
    assert_equal(0, @room1.check_number_of_songs())
  end

  def test_add_songs_to_room
    @room1.add_songs_to_room(@song1)
    @room1.add_songs_to_room(@song2)
    assert_equal(2, @room1.check_number_of_songs())
  end

  def test_maximum_capacity
    assert_equal(3, @room1.maximum)
  end

  def test_maximum_capacity__under
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)

    assert_equal(3, @room1.do_not_exceed(@guest3))
  end

  def test_maximum_capacity__over
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    @room1.check_in_guest(@guest3)
    assert_equal("Room full", @room1.do_not_exceed(@guest4))
  end

  # def test_pay_fee
  #   assert_equal(40, pay_fee(@guest1))
  # end



end #end of class
