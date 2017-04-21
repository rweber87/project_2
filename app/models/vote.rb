class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :submission
  validates :user, presence: true
  validates :submission, presence: true
  validates :user_id, uniqueness: {scope: :submission_id}
end
