class Room

def initialize(name, maximum)
  @name = name
  @guest_array = []
  @songs_array = []
  @maximum = maximum
end

def name()
  return @name
end

def check_number_of_guests_in_room()
  return @guest_array.count()
end

def check_in_guest(guest)
  @guest_array.push(guest)
  return check_number_of_guests_in_room()
end

def check_out_guest(guest)
  @guest_array.pop()
  return check_number_of_guests_in_room()
end

def check_number_of_songs()
  return @songs_array.count
end

def add_songs_to_room(song, song2)
  @songs_array.push(song, song2)
  return check_number_of_songs
end

def maximum()
  return @maximum
end

end #end of class
