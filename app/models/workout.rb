# frozen_string_literal: true

class Workout < ApplicationRecord
  has_many :scrobbles, dependent: :destroy
end
