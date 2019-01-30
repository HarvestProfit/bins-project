class AddBinIdToMeasurement < ActiveRecord::Migration[5.2]
  def change
    add_reference :measurements, :bin, foreign_key: true
  end
end
