require 'rails_helper'

describe Employee do
  it { should have_many(:projects).through(:employee_projects) }
  it { should validate_presence_of :name }

  it("titleizes the name of an employee") do
    # rspec test uses test database which is empty, so make division information separately and try to test with division information for name test.
    division = Division.create(name: "Division")
    employee = Employee.create({name:"shawna", division_id: division.id})
    expect(employee.name()).to(eq("Shawna"))
  end
end
