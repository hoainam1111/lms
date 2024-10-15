class LessonsController < ApplicationController
  before_action :set_lesson, only: %i[ show update  ]

  # GET /lessons or /lessons.json


  # GET /lessons/1 or /lessons/1.json
  def show
    @course = @lesson.course
  end

  # GET /lessons/new
  def new
    @lesson = Lesson.new
  end

  # GET /lessons/1/edit
  def update
  end

  # POST /lessons or /lessons.json

  # PATCH/PUT /lessons/1 or /lessons/1.json


  # DELETE /lessons/1 or /lessons/1.json


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

  # Only allow a list of trusted parameters through.
end
