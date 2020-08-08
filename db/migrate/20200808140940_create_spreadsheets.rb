class CreateSpreadsheets < ActiveRecord::Migration[6.0]
  def change
    create_table :spreadsheets do |t|
      t.string :title
      t.string :url
      t.string :icon
      t.references :channel

      t.timestamps
    end
  end
end
