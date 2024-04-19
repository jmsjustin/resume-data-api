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

  def update
    @education = Education.find_by(id: params[:id])
    @education.update(
      start_date: params[:start_date] || @education.start_date,
      end_date: params[:end_date] || @education.end_date,
      degree: params[:degree] || @education.degree,
      university_name: params[:university_name] || @education.university_name,
      details: params[:details] || @education.details,
      created_at: params[:created_at] || @education.created_at,
      updated_at: params[:updated_at] || @education.updated_at,
    )
    render :show
  end
end
