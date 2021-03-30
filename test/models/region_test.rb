require "test_helper"

class RegionTest < ActiveSupport::TestCase
  test "should create region" do
    region = Region.create(name: 'Ростовская область')
    assert region.save
  end

  test "should find region" do
    region_id = regions(:moscow_oblast).id
    assert_nothing_raised { Region.find(region_id) }
  end

  test "should update region" do
    region = regions(:leningrad_oblast)
    region.update(name: 'Oblast Leningrad')
    assert_equal 'Oblast Leningrad', regions(:leningrad_oblast).name
  end

  test "should destroy region" do
    region = regions(:leningrad_oblast)
    region.destroy
   assert_raise(ActiveRecord::RecordNotFound) { Region.find(region.id) }
  end

  test "should not create existing region" do
    region = Region.new
    region.name = regions(:moscow_oblast).name
    region.save
    assert region.errors
    assert region.errors[:name]
  end
end
