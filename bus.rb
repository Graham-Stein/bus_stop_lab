class Bus

  attr_reader :route, :dest, :passengers

  def initialize(route, dest)
    @route = route
    @dest = dest
    @passengers = []
  end

  def drive()
    return "Brum brum"
  end

  def number_of_passengers()
    @passengers.length
  end

  def add_passenger(pax)
    @passengers.push(pax)
  end

  def remove_passenger(name)
    for pax in @passengers
      @passengers.delete(pax) if pax.name == name
    end
  end

  def search_passenger(test_name)
    for pax in @passengers
      return true if pax.name == test_name
    end
    return false
  end

  def remove_all_pax()
    @passengers = []
  end


end
