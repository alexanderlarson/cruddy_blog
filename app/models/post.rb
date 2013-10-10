class Post < ActiveRecord::Base
  validates :body, :presence => true
  validates :title, :presence => true
  belongs_to :user
  has_many :tags
end
