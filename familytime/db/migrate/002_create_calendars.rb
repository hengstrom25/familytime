class CreateCalendars < ActiveRecord::Migration[4.2]
  def change
    create_table :calendars do |t|
      t.string :title
      t.integer :user_id
  	end
  end
end