class Story < ApplicationRecord
  belongs_to :user
  belongs_to :illness
  belongs_to :location
  belongs_to :anecdote

  validates :user, presence: true
  validates :illness, presence: true
  validates :location, presence: true
end
