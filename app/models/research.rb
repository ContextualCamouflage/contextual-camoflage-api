class Research < ApplicationRecord
  belongs_to :submission, :primary_key => :cookie, :foreign_key => :cookie
end
