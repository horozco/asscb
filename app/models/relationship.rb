class Relationship < ActiveRecord::Base
  attr_accessible :name, :student_id, :parent_guardian_id

  belongs_to :student
  belongs_to :parent_guardian

  validates_presence_of :name, :student_id, :parent_guardian_id
  
end
