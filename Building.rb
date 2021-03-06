class Building
  attr_writer :num_windows, :num_walls, :num_stories, :building_materials, :colors, :has_aircon
  attr_reader :num_windows, :num_walls, :num_stories, :building_materials, :colors, :has_aircon
  def initialize(num_windows, num_walls, num_stories, building_materials, colors, has_aircon)
    @num_windows = num_windows
    @num_walls = num_walls
    @num_stories = num_stories
    @building_materials = building_materials.split()
    @colors = colors.split()
    @has_aircon = has_aircon
  end
end
