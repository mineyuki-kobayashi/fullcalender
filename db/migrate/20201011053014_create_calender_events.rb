class CreateCalenderEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :calender_events do |t|
      t.string :title
      t.text :description
      t.datetime :end_date

      t.timestamps
    end
  end
end
