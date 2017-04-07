class Anecdote < ApplicationRecord
  validates :cookie, presence: true
  belongs_to :submission, :primary_key => :cookie, :foreign_key => :cookie
end
