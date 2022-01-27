class Workout < ApplicationRecord
  has_many :scrobbles, dependent: :destroy
end
