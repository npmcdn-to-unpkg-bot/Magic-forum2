class Comment < ApplicationRecord
  belongs_to :post
  mount_uploader :image, ImageUploader
  belongs_to :user
  validates :body, length: { minimum: 20 }, presence: true
  has_many :votes

  def total_votes
    votes.pluck(:value).sum
  end
end
