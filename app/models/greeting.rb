class Greeting < ApplicationRecord
  validates :message, presence: true,
                      length: { maximum: 200, too_long: '200 characters in message is the maximum allowed.' }
end
