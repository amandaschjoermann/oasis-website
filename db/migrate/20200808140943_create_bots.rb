class CreateBots < ActiveRecord::Migration[6.0]
  def change
    create_table :bots do |t|
      t.string :name
      t.string :avatar

      t.timestamps
    end
  end
end
