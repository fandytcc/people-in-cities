class Citizen < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  validates :age, length: { maximum: 2 }, allow_blank: true
  validates :occupation, length: { maximum: 255 }, allow_blank: true
  belongs_to :city
end
