require("minitest/autorun")
require("minitest/rg")
require_relative("../River")
require_relative("../Fish")
require_relative("../Bear")

class TestRiver < MiniTest::Test

def setup
@fish1 = Fish.new("Salmon")
@river = River.new("Amazon", @fish1)
end

# check the river fish population
def test_has_a_fish
assert_equal(1, @river.river_fish_population())
end

def test_get_river_name()
  assert_equal("Amazon", @river.name)
end

def test_get_fish()
  assert_equal(@fish1, @river.get_fish(@fish1))
end

def test_remove_fish()
  @river.remove_fish()
  assert_equal(0, @river.river_fish_population())
end

end
