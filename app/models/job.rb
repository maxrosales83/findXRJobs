class Job < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, AvatarUploader

  JOB_TYPES = ["Full-time", "Part-time", "Contract", "Freelance"]
  
  def self.search(params)
    jobs = Job.where("body LIKE ? or title LIKE ?"  "%#{params[:search]}%",
           "%#{params[:search]}%") if params[:search].present?
    jobs
  end
end

