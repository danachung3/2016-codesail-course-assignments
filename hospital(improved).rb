class Building
  attr_writer :num_windows, :num_walls, :num_stories, :building_materials, :colors, :has_aircon
  attr_reader :num_windows, :num_walls, :num_stories, :building_materials, :colors, :has_aircon
  def initialize(num_windows, num_walls, num_stories, building_materials, colors, has_aircon)
    @num_windows = num_windows
    @num_walls = num_walls
    @num_stories = num_stories
    @building_materials = building_materials
    @colors = colors
    @has_aircon = has_aircon
  end
end

class Hospital < Building
  attr_accessor :num_patients

  def initialize(num_windows, num_walls, num_stories, building_materials, colors, has_aircon, num_patients)
    super(num_windows, num_walls, num_stories, building_materials, colors, has_aircon)
    @num_patients = num_patients
  end

  def level_of_cleanliness
    puts "100%"
  end

  def self.num_shipments_drugs
    puts "too many to count"
  end
end
