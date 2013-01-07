class Grade < ActiveRecord::Base
  attr_accessible :classroom, :group_director_id, :level, :name

  validates_presence_of :name, :level, :classroom

  has_many :students
end
