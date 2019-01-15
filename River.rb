class River
attr_accessor :name, :fish_pop

def initialize(name, fish_pop)
  @name = name
  @fish_pop = [fish_pop]
end

def river_fish_population()
  return @fish_pop.length
end


def get_fish(fish)
  for fish in @fish_pop
    return fish
  end
end

def remove_fish()
  catched_fish = @fish_pop.pop()
  return catched_fish
end

end
