class CreateBots < ActiveRecord::Migration[6.0]
  def change
    create_table :bots do |t|
      t.string :name
      t.string :avatar
      t.string :intro
      t.string :host
      t.string :queue
      t.string :template
      t.string :commands
      t.string :example

      t.timestamps
    end
  end
end
