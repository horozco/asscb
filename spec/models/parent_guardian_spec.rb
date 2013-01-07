require 'spec_helper'

describe ParentGuardian, "Relations" do
 	it {should have_many(:relationships)}
 	it {should have_many(:students).through(:relationships)}
end

describe ParentGuardian, "Validations" do
 	it {should validate_presence_of(:cellphone_number)}
 	it {should validate_presence_of(:residential_address)}
 	it {should validate_presence_of(:occupation)}
end
