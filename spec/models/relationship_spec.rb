require 'spec_helper'

describe Relationship, "Relations" do
  it {should belong_to(:student)}
  it {should belong_to(:parent_guardian)}
end

describe Relationship, "Validations" do
	it {should validate_presence_of(:name)}
	it {should validate_presence_of(:student_id)}
	it {should validate_presence_of(:parent_guardian_id)}
end
