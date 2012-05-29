class AdminUser < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :username, :email

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i

  #validates_presence_of :first_name
  #validates_length_of :first_name, :maximum => 25
  #validates_presence_of :last_name
  #validates_length_of :last_name, :maximum => 25
  #validates_presence_of :username
  #validates_length_of :first_name, :within => 8..25
  #validates_uniqueness_of :username
  #validates_presence_of :email
  #validates_length_of :first_name, :maximum => 100
  #validates_format_of :email, :with => EMAIL_REGEX
  #validates_confirmation_of :email

  validates :first_name, :presence => true, :length => {:maximum => 25}
  validates :last_name, :presence => true, :length => {:maximum => 25}
  validates :username, :length => {:within => 8..25}, :uniqueness => true
  validates :email, :presence => true, :length => {:maximum => 100},
   :format => EMAIL_REGEX, :confirmation => true
   
  scope :sorted, order("admin_users.last_name ASC, admin_users.first_name
    ASC")

   def name
      "#{first_name} #{last_name}"
   end

end
