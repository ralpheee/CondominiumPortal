class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :apartment_number
      t.decimal :rent
      t.decimal :electricity_bill
      t.decimal :water_bill
      t.date :due_date
      t.string :status

      t.timestamps null: false
    end
  end
end
