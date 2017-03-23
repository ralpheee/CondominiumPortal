class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :subject
      t.string :content
      t.datetime :date_posted

      t.timestamps null: false
    end
  end
end
