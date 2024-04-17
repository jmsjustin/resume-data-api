class StudentsController < ApplicationController
  def index
    @students = Student.all
    render :index
  end

  def create
    @student = Student.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      website_url: params[:website_url],
      resume_url: params[:resume_url],
      github_url: params[:github_url],
      photo: params[:photo],
    )
    render :show
  end
end
