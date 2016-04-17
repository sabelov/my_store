class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :commentable, polimorphic: true
end
