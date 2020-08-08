class BotChannel < ApplicationRecord
  belongs_to :bot
  belongs_to :channel
end
