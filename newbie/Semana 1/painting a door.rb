class Door
  def initialize(nombre)
    @nombre = nombre
  end

  def spray_paint(color)
    color_cap = color.capitalize
    "The #{color_cap} door looks great!"
  end
end


big_door = Door.new("Orange")
#test
p big_door.spray_paint('yellow') == "The Yellow door looks great!"