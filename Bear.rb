class Bear
attr_accessor :name, :type

def initialize(name, type)
  @stomach = []
  @name = name
  @type =  type
end

# A bear could have a food_count method
def food_count()
return @stomach.count()
end

def eats_from_river(river)
    @stomach << river.remove_fish()
    return @stomach
end

def stomach_fish_count()
  return @stomach.length
end

# A bear could have a roar method
def bear_roars()
  return "RROOOAAAAARRRRR"
end
end
