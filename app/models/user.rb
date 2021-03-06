class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  has_many :questions
  has_many :comments
  # attr_accessible :name, :email, :password, :password_confirmation
  
  validates_presence_of :name
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
end
