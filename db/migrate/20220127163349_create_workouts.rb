# frozen_string_literal: true

class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :activity_type
      t.timestamp :start_uts
      t.timestamp :end_uts

      t.timestamps
    end
  end
end
