class Research < ApplicationRecord
  belongs_to :submission, :foreign_key => :page_id
end
