class CreateAcEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :ac_events do |t|
      t.string :title
      t.string :season
      t.string :event_icon
      t.string :description
      t.date :from_date
      t.date :to_date

      t.timestamps
    end
  end
end
