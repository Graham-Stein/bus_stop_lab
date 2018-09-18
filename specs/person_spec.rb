require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")

class PersonTest < MiniTest::Test

  def setup()
    @person1 = Person.new("Brian Hall", 42)

  end

  def test_get_name
    assert_equal("Brian Hall", @person1.name)
  end

  def test_get_age
    assert_equal(42, @person1.age)
  end

end
