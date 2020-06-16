# frozen_string_literal: true

class LessonsController < ApplicationController
  before_action :set_lesson, only: %i[show edit update destroy]
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  # GET /lessons
  # GET /lessons.json
  def index
    @lessons = Lesson.all
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
  end


  # GET /lessons/new
  def new
    @lesson = Lesson.new
    @subject = Subject.all.map { |s| [s.title, s.id] }
    @source = 'post'
    @post_path = lessons_path
    # puts params
    # @lesson.title = params[:title]
    # @lesson.body = params[:data]

    # if @lesson.save!
    #   render :json => {status: 'ok'}
    # end
  end

  # GET /lessons/1/edit
  def edit
    @lesson = Lesson.find(params[:id])
    @source = 'patch'
    @post_path = lesson_path(@lesson.id)
  end

  # POST /lessons
  # POST /lessons.json
  def create
  

    # @lesson = Lesson.new(lesson_params)
    # @lesson.subject.user = current_user
    # respond_to do |format|
    #   if @lesson.save
    #     format.js
    #     format.html { redirect_to @lesson, notice: 'Lesson was successfully created.' }
    #     format.json { render :show, status: :created, location: @lesson }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @lesson.errors, status: :unprocessable_entity }
    #   end
    # end
    @lesson = Lesson.new
    @subject = Subject.all.map { |s| [s.title, s.id] }
    puts params
    @lesson.title = params[:title]
    @lesson.body = params[:data]

    if @lesson.save!
      render :json => {status: 'ok', redirect_path: edit_lesson_path(@lesson.id)}
    end
  end

  # PATCH/PUT /
  # lessons/1
  # PATCH/PUT /lessons/1.json
  def update
    @leeson = Lesson.find(params[:id])
    @lesson.title = params[:title]
    @lesson.body = params[:data]

    if @lesson.save!
      render :json => {status: 'ok'}
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    @lesson.destroy
    respond_to do |format|
      format.html { redirect_to lessons_url, notice: 'Lesson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def lesson_params
    params.require(:lesson).permit(:name, :title, :body, :subject_id)
  end
end
