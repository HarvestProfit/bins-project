class Measurement < ApplicationRecord
  belongs_to :bin

  def square_volume
    Math::PI * bin.radius_squared * outside
  end

  def final_in_inches
    square_volume / 144
  end

  def final_in_feet
    final_in_inches / 12
  end
end
