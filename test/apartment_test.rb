require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'

class ApartmentTest < Minitest::Test
  def test_it_exists
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_instance_of Apartment, unit1
  end

  def test_it_has_unit_number
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal "A1", unit1.number
  end

  def test_it_has_rent
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal 1200, unit1.monthly_rent
  end

  def test_number_of_bathrooms
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal 1, unit1.bathrooms
  end

  def test_number_of_bedrooms
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal 1, unit1.bedrooms
  end

  def test_there_is_no_renter
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_nil nil, unit1.renter
  end

  def test_add_renter
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    jessie = Renter.new("Jessie")
    unit1.add_renter(jessie)

    assert_equal jessie, unit1.renter
  end
end
