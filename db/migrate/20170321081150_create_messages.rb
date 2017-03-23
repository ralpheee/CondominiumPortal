class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :sender
      t.string :recipient
      t.string :message
      t.datetime :date

      t.timestamps null: false
    end
  end
end
