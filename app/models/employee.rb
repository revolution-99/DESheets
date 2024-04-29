class Employee < ApplicationRecord
  belongs_to :department, optional: true
  has_many :assignments
  has_many :projects, through: :assignments

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end