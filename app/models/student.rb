class Student < ActiveRecord::Base
  attr_accessible :address, :age_position, :allergies, :birthdate, :birthplace, :cellphone_number,
  				  :email, :first_name, :grade_id, :house_members, :latitude, :longitude,
  				  :medicines, :name_health, :number_id, :number_of_brothers, :observations,
  				  :phone_number, :photo, :physical_problems, :second_name, :type_id,
  				  :type_of_health
	
	validates_presence_of :address, :birthdate, :birthplace, :email, :first_name,
											 :number_id,:second_name, :type_id
  
  validates :email, uniqueness: true

  belongs_to :grade
  has_many :relationships
  has_many :parent_guardians, through: :relationships

  has_attached_file :photo,
            :styles => { :medium => "256x320>", :thumb => "60x80>" },
            :url => "/assets/photos/:id/:style/:basename.:extension",
            :path => ":rails_root/public/assets/photos/:id/:style/:basename.:extension"
  validates_attachment :photo,
            :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png"] },
            :size => { :less_than => 5.megabytes }

	def full_name
  	first_name + " " + second_name
  end 
end
