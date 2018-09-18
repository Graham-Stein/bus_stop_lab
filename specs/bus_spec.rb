require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")

class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new("37","Pennicuik")
    @person1 = Person.new("Iain", 25)
    @person2 = Person.new("Dave", 33)
  end

  def test_return_route
    assert_equal("37", @bus.route)
  end

  def test_return_dest
    assert_equal("Pennicuik", @bus.dest)
  end

  def test_return_passengers
    assert_equal([], @bus.passengers)
  end

  def test_drive
    assert_equal("Brum brum", @bus.drive)
  end

  def test_passengers_zero
    assert_equal(0, @bus.number_of_passengers)
  end

  def test_passenger_one
    @bus.passengers.push(Person.new("Iain",30))
    assert_equal(1, @bus.number_of_passengers)
  end

  def test_add_passenger()
    @bus.add_passenger(@person1)
    # p @bus.passengers[0].name
    assert_equal(1, @bus.number_of_passengers)
  end


  def test_remove_passenger()
    @bus.add_passenger(@person1)
    @bus.add_passenger(@person2)
    @bus.remove_passenger("Iain")
    assert_equal(false, @bus.search_passenger("Iain"))
  end

  def test_remove_all_pax
    @bus.remove_all_pax
    assert_equal(0, @bus.number_of_passengers)
  end

end
