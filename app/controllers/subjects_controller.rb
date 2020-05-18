# frozen_string_literal: true

class SubjectsController < ApplicationController
  before_action :set_subject, only: %i[show edit update destroy]

  # GET /subjects
  # GET /subjects.json
  def index
    @subjects = Subject.all
    @lessons = Lesson.all
  end

  # GET /subjects/1
  # GET /subjects/1.json
  def show
  end

  # GET /subjects/new
  def new
    @subject = Subject.new
  end

  # GET /subjects/1/edit
  def edit
  end

  # POST /subjects
  # POST /subjects.json
  def create
    @subject = Subject.new(subject_params)

    respond_to do |format|
      if @subject.save
        @subject.group_ids = params[:group_subjects_ids]
        format.html { redirect_to @subject, notice: 'Subject was successfully created.' }
        format.json { render :show, status: :created, location: @subject }
      else

        format.html { render :new }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subjects/1
  # PATCH/PUT /subjects/1.json
  def update
    respond_to do |format|
      if @subject.update(subject_params)
        @subject.group_ids = params[:group_subjects_ids]
        format.html { redirect_to @subject, notice: 'Subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject }
      else
        format.html { render :edit }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subjects/1
  # DELETE /subjects/1.json
  def destroy
    @subject.destroy
    respond_to do |format|
      format.html { redirect_to subjects_url, notice: 'Subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  #
  # def checkbox_items_output(parent, chain_check_item, item_ids)
  #   hidden_field_tag "#{item_ids}", nil
  #   parent.all.each do |item|
  #     def checked_item (item)
  #       return item_ids.include?(item.id), id: dom_id(item)
  #     end
  #     check_box_tag "#{item_ids}", item.id, chain_check_item.checked_item
  #     label_tag dom_id(item), item.name
  #   end
  # end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_subject
    @subject = Subject.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def subject_params
    params.require(:subject).permit(:title, :lesson_id, :group_id)
  end
end
