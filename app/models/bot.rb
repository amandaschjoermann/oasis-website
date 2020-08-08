class Bot < ApplicationRecord
  has_many :channels, through: :bot_channels
end
