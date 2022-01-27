class AddWorkoutToScrobble < ActiveRecord::Migration[7.0]
  def change
    add_reference :scrobbles, :workout, null: false, foreign_key: true
  end
end
