class Post < ActiveRecord::Base
  validates :title, :body, :category, :author_id, presence: true
  validates :title, length: { minimum: 3 }
end
