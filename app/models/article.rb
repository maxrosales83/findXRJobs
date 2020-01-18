class Article < ActiveRecord::Base
  belongs_to :user , :optional => true
  mount_uploader :blogimage, AvatarUploader
    def admin?
      admin
    end
end