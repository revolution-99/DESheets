class Project < ApplicationRecord
  has_many :assignments
  has_many :employees, through: :assignments

  validates :title, presence: true
end