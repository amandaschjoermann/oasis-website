class CreateChannels < ActiveRecord::Migration[6.0]
  def change
    create_table :channels do |t|
      t.string :name
      t.string :icon_url
      t.string :description
      t.references :category

      t.timestamps
    end
  end
end
