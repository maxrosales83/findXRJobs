class Job < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, AvatarUploader

  JOB_TYPES = ["Full-time", "Part-time", "Contract", "Freelance"]
  
  def self.search(params)
    jobs = Job.where("description LIKE ? or title LIKE ? or job_type LIKE ? or location LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%",
           "%#{params[:search]}%") if params[:search].present?
    jobs
  end
end

