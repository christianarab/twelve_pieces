class Comment < ApplicationRecord
  belongs_to :article

  validates :commenter, :body, presence: true
  validates :rating, numericality: { only_integer: true, less_than_or_equal_to: 5 }
end
