class Following < ApplicationRecord
  belongs_to :user
  belongs_to :sound
end
