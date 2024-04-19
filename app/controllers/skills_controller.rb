class SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render :index
  end

  def create
    @skill = Skill.create(
      skill_name: params[:skill_name],
    )
    render :show
  end

  def update
    @skill = Skill.find_by(id: params[:id])
    @skill.update(
      skill_name: params[:skill_name] || skill.skill_name,
    )
    render :show
  end

  def destroy
    skill = Skill.find_by(id: params[:id])
    skill.destroy
    render json: { message: "successfully lost a skill" }
  end
end
