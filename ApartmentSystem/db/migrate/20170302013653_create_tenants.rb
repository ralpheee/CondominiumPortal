class CreateTenants < ActiveRecord::Migration[5.0]
  def change
    create_table :tenants do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :unit_id
      t.integer :number_of_household

      t.timestamps
    end
  end
end
