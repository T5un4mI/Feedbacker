require "test_helper"

class CityTest < ActiveSupport::TestCase
  test "should create city" do
    region = regions(:moscow_oblast)
    city = City.create(name: 'Podolsk', region: region)
    assert city.save
  end

  test "should find city" do
    city_id = cities(:moscow).id
    assert_nothing_raised { City.find(city_id) }
  end

  test "should update city" do
    city = cities(:moscow)
    city.update(name: 'Столица')
    assert_equal 'Столица', cities(:moscow).name
  end

  test "should destroy city" do
    city = cities(:moscow)
    city.destroy
    assert_raise(ActiveRecord::RecordNotFound) { City.find(city.id) }
  end
end