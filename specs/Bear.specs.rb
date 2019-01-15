require("minitest/autorun")
require("minitest/rg")
require_relative("../Bear")
require_relative("../Fish")
require_relative("../River")

class TestBear < MiniTest::Test

def setup
@fish = Fish.new("Salmon")
@fish = @fish1
@bear = Bear.new( "Pooh", "Brown Bear")
@river = River.new("Amazon", @fish)
end

def test_get_bear_name()
  assert_equal("Pooh", @bear.name)
end

def test_get_bear_type()
  assert_equal("Brown Bear", @bear.type)
end

def test_eats_from_river()
@bear.eats_from_river(@river)
assert_equal(1, @bear.stomach_fish_count())
assert_equal(0, @river.river_fish_population())
end

def test_bear_roars()
  assert_equal("RROOOAAAAARRRRR", @bear.bear_roars())
end
end
