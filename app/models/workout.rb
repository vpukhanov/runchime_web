# frozen_string_literal: true

require 'securerandom'

class Workout < ApplicationRecord
  has_many :scrobbles, dependent: :destroy

  before_save :generate_id

  private

  def generate_id
    update(id: SecureRandom.uuid) if id.blank?
  end
end
