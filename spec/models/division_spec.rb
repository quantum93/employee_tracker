require 'rails_helper'

describe Division do
  it { should validate_presence_of :name }

  it("titleizes the name of an division") do
    division = Division.create({name:"executive"})
    expect(division.name()).to(eq("Executive"))
  end

end
