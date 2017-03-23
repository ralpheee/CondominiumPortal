class CreateUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :units do |t|
      t.string :unit_type
      t.decimal :unit_cost
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
