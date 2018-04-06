class Room

def initialize(name)
  @name = name
  @guest_array = []
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

end #end of class
