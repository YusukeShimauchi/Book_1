class Comment < ActiveRecord::Base
  belongs_to :information
  belongs_to :user
end
