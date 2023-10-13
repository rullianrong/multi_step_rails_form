class Position < ApplicationRecord
  validates_presence_of :position, :position_date

  belongs_to :information
end
