require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")


class GuestTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Ricky", 50, "Ruby Tuesday")
  end

  def test_guest_name
    assert_equal("Ricky", @guest1.name)
  end

  def test_guest_money
    assert_equal(50, @guest1.money)
  end

  def test_guest_favorite_song
    assert_equal("Ruby Tuesday", @guest1.favorite_song)
  end

end #end of class
