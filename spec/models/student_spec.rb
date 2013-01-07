require 'spec_helper'

describe Student, "Relations" do
  it {should have_many(:relationships)}
  it {should belong_to(:grade)}
  it {should have_many(:parent_guardians).through(:relationships)}
end

describe Student, "Validations" do
	it {should validate_presence_of(:address)}
	it {should validate_presence_of(:birthdate)}
	it {should validate_presence_of(:birthplace)}
	it {should validate_presence_of(:email)}
	it {should validate_presence_of(:first_name)}
	it {should validate_presence_of(:number_id)}
	it {should validate_presence_of(:second_name)}
	it {should validate_presence_of(:type_id)}
	it {should validate_uniqueness_of(:email)}
end

describe Student, "Methods" do
	it "should return a string not null with the student's full_name" do
    student = FactoryGirl.create(:student, first_name: "Hernan", second_name: "Orozco")
    student.full_name.should_not be_nil
    student.full_name.should eq("Hernan Orozco")
  end	
end