class Apartment
  attr_reader :apartment_specs,
              :renter

  def initialize(apartment_specs)
    @apartment_specs = apartment_specs
  end

  def number
    apartment_specs[:number]
  end

  def monthly_rent
    apartment_specs[:monthly_rent]
  end

  def bathrooms
    apartment_specs[:bathrooms]
  end

  def bedrooms
    apartment_specs[:bedrooms]
  end

  def add_renter(renter)
    @renter = renter
  end
end
