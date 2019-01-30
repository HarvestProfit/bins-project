class AddTimeToMeasurements < ActiveRecord::Migration[5.2]
  def change
    add_column :measurements, :time, :datetime
  end
end
