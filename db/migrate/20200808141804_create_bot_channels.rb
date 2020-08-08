class CreateBotChannels < ActiveRecord::Migration[6.0]
  def change
    create_table :bot_channels do |t|
      t.references :bot
      t.references :channel

      t.timestamps
    end
  end
end
