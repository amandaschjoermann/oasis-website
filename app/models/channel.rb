class Channel < ApplicationRecord
  has_many :spreadsheets
  has_many :bot_channels
  has_many :bots, through: :bot_channels
  belongs_to :category
end
