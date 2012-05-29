class AlterUsers < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :first_name, :last_name, :username, :email
end
