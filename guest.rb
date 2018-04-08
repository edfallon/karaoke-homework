class Guest

def initialize(name, money, favorite_song)
  @name = name
  @money = money
  @favorite_song = favorite_song
end

def name()
  return @name
end

def money()
  return @money
end

def favorite_song()
  return @favorite_song
end

def make_payment(fee)
  return @money -= fee
end

end #end of class
