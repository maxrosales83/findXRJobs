class Article < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
    def admin?
      admin
    end
end