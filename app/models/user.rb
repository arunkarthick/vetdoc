class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :type, :address, :city, :state, :zipcode, :school_received_degree_from, :years, :owner
  # attr_accessible :title, :body
  
  validate :name, :email, :presence => true
  validate :name, :length => 35
  validate :email, :unique => true
end
