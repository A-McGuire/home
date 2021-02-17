class Building
  attr_reader :units

  def initialize
    @units = []
    @renters = []
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
end
