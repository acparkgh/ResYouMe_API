class Api::V1::ResumesController < ApplicationController

  def index
    byebug
    resumes = Resume.all 
    render json: resumes 
  end


end
