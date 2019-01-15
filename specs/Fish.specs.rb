require("minitest/autorun")
require("minitest/rg")
require_relative("../Fish")
require_relative("../Bear")
require_relative("../River")

class TesFish < MiniTest::Test

def setup
@fish = Fish.new("Salmon")
end

def test_get_fish_name()
  assert_equal("Salmon", @fish.get_fish_name())
end
end
