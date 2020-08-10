class Bot < ApplicationRecord
  has_many :bot_channels
  has_many :channels, through: :bot_channels
end
