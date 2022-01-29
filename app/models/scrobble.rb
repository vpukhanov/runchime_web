# frozen_string_literal: true

class Scrobble < ApplicationRecord
  belongs_to :workout, inverse_of: :scrobbles
end
