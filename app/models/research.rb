class Research < ApplicationRecord
  belongs_to :submission, :foreign_key => :cookie
end
