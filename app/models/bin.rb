class Bin < ApplicationRecord
  has_many :measurements, dependent: :destroy

  def radius
    diameter / 2
  end

  def radius_squared
    radius ** 2
  end
end
