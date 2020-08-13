class CreateInfographics < ActiveRecord::Migration[6.0]
  def change
    create_table :infographics do |t|
      t.string :title
      t.string :image_url
      t.string :tags

      t.timestamps
    end
  end
end
