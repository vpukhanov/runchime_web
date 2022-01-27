# frozen_string_literal: true

class AddWorkoutToScrobble < ActiveRecord::Migration[7.0]
  def change
    add_reference :scrobbles, :workout, null: false, foreign_key: true # rubocop:disable Rails/NotNullColumn
  end
end
