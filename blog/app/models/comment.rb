class Comment < ActiveRecord::Base
  belongs_to :article

  validates :commenter, presence: true
  validates :detail, presence: true
end
