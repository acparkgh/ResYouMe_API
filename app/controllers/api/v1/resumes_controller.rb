class Api::V1::ResumesController < ApplicationController

  def index
    byebug
    resumes = Resume.all 
    render json: resumes 
  end

  # For making Resume

  def create
    resume = Resume.new(resume_params)

    if resume.valid?
      resume.save
      render json: {resume: resume}, status: :created
    else
      render json: {error: "Failed to create a resume"}, status: :not_acceptable
    end
  end

  private

  def resume_params
    params.permit(:user_id, :bio, :experience, :education, :skills, :misc)
  end


end
