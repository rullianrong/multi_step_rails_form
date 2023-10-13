class Information < ApplicationRecord
  validates_presence_of :name, :department

  belongs_to :user
  has_many :positions, dependent: :destroy

  accepts_nested_attributes_for :positions, reject_if: :all_blank, allow_destroy: true
end
