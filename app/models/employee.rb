class Employee < ApplicationRecord
  belongs_to :division
  has_many :employee_projects
  has_many :projects, :through => :employee_projects
  validates :name, presence: true

  before_save(:titleize_employee)

  private
  def titleize_employee
    self.name = self.name.titleize
  end
end
