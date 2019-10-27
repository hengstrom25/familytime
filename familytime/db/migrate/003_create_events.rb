class CreateEvents < ActiveRecord::Migration[4.2]
  def change
    create_table :events do |t|
      t.string :title
	  t.string :date
      t.string :time
      t.string :guests
      t.integer :calendar_id
  	end
  end
end


