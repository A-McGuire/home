class Building
  attr_reader :units

  def initialize
    @units = []
    @renters = []
    @rented_units = []
  end

  def add_unit(unit)
    units << unit
  end

  def renters #todo refactor for law of demeter
    units.map do |unit|
      unit.renter.name
    end
  end

  def average_rent
    units.sum do |unit|
      unit.monthly_rent / units.count.to_f
    end
  end

  def rented_units
    units.find_all do |unit|
      unit.renter != nil
    end
  end

  def renter_with_highest_rent #todo can probably make this cleaner
    unit_with_highest_rent = rented_units.max_by do |unit|
      unit.monthly_rent
    end

    unit_with_highest_rent.renter
  end

  def units_by_number_of_bedrooms
    # units.map do |unit|
    #   require "pry"; binding.pry
    # end
    #
    # # bedrooms.group_by do |spec|
    # #   require "pry"; binding.pry
    # # end
  end
end
