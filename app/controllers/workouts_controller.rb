# frozen_string_literal: true

class WorkoutsController < ApplicationController
  before_action :set_workout, only: %i[show destroy]

  # GET /workouts/1 or /workouts/1.json
  def show; end

  # POST /workouts or /workouts.json
  def create
    @workout = Workout.new(workout_params)

    respond_to do |format|
      if @workout.save
        format.json { render :show, status: :created, location: @workout }
      else
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workouts/1 or /workouts/1.json
  def destroy
    @workout.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_workout
    @workout = Workout.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def workout_params
    params.require(:workout).require(:activity_type, :start_uts, :end_uts, :scrobbles)
  end
end
