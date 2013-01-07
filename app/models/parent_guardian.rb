class ParentGuardian < ActiveRecord::Base
  attr_accessible :cellphone_number, :company_address, :company_latitude,
  							  :company_longitude, :company_name, :company_phone, :email,
  							  :full_name, :residential_latitude, :residential_longitude,
  							  :occupation, :phone_number, :residential_address

  validates_presence_of :full_name, :cellphone_number, :residential_address, :occupation

  has_many :relationships
  has_many :students, through: :relationships
end
