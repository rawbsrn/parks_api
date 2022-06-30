class CreateParks < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :nearest_town
      t.string :state
      t.integer :area
      t.integer :designated

      t.timestamps
    end
  end
end
