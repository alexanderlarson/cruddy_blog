class Post < ActiveRecord::Base
  validates :content, :presence => true
  validates :title, :presence => true
  validates :user_id, :uniqueness => true
  belongs_to :user
  has_many :taggings
  has_many :tags, through: :taggings

end
