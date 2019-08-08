require 'rails_helper'

describe Project do
  it { should have_many(:employees).through(:employee_projects) }
  it { should validate_presence_of :name }
end
