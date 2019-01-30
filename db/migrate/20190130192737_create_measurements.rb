class CreateMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.integer :outside
      t.integer :inside

      t.timestamps
    end
  end
end
