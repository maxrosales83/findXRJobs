class Article < ActiveRecord::Base
  
    def admin?
      admin
    end
end