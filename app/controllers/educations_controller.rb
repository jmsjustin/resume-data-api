class EducationsController < ApplicationController
  def index
    @educations = Education.all
    render :index
  end

  def create
    @education = Education.create(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details],
      created_at: params[:created_at],
      updated_at: params[:updated_at],
    )
    render :show
  end

  def show
    @education = Education.find_by(id: params[:id])
    render :show
  end
end
