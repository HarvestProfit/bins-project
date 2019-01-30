class CreateBins < ActiveRecord::Migration[5.2]
  def change
    create_table :bins do |t|
      t.decimal :diameter, default: 216.00
      t.decimal :total_height, default: 432.00
      t.decimal :height_to_center, default: 60.00

      t.timestamps
    end
  end
end
