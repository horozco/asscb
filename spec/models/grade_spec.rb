require 'spec_helper'

describe Grade, "Relations" do
  it {should have_many(:students)}
end

describe Grade, "Validations" do
	it {should validate_presence_of(:name)}
	it {should validate_presence_of(:level)}
	it {should validate_presence_of(:classroom)}
end

