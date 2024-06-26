class Department < ApplicationRecord
  before_destroy :check_employees_before_deletion
  has_many :employees, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  # custom validator to prevent deletion of departments that have employees still assigned to them
  def check_employees_before_deletion
    if employees.present?
      errors.add(:base, "You can't delete the department because it has employees")
      throw(:abort)
    end
  end
end