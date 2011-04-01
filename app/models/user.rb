# == Schema Information
# Schema version: 20110217021708
#
# Table name: users
#
#  id         :integer         not null, primary key
#  firstname  :string(255)
#  lastanem   :string(255)
#  email      :string(255)
#  phone      :string(255)
#  street     :string(255)
#  city       :string(255)
#  zipcode    :string(255)
#  state_id   :integer
#  county_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
	attr_accessible :firstname, :lastname, :email, :phone, :street, :county, :zipcode, :city

belongs_to :state
belongs_to :county




#	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
#
 # validates :firstname,  :presence => true,
  #                  :length   => { :maximum => 50 }
 # validates :email, :presence => true,
 #                   :format   => { :with => #email_regex }

end
