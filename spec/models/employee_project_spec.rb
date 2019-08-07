require 'rails_helper'

describe EmployeeProject do
  it { should belong_to(:project) }
  it { should belong_to(:employee) }
end
