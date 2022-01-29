# frozen_string_literal: true

json.extract! workout, :id, :activity_type, :start_uts, :end_uts, :scrobbles
json.url workout_url(workout, format: :json)
