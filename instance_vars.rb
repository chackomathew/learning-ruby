class Spaceship
  # ruby provides getter and setter by using attr_accessor
  attr_accessor :origin, :gas
  # getter only
  attr_reader :eta
  # setter only! i don't see a real world use-case
  attr_writer :dummy
  # methods are public by default
  def launch(destination)
    # instance variables declared using '@'
    # private scoped
    @destination = destination
  end

  def destination
    @destination
  end
end

# freely mix class and other declarations in same file

ship = Spaceship.new
ship.launch "Moon"
# ship.launch("Earth")
# puts ship
puts ship.inspect
puts ship.destination
# puts ship.object_id

# same as puts object.inspect
p ship

ship.origin = "Elanji"
puts "ORIGIN: " + ship.origin
#puts "ETA: " + ship.eta
# ERROR! no getter available as we declared instance variable using attr_writer
#puts ship.dummy
# ERROR! no getter available. attr_reader
#puts ship.eta = "2000 light years"
