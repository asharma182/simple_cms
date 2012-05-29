class Subject < ActiveRecord::Base
   attr_accessible :name, :position, :visible, :created_at
   has_many :pages

    validates_presence_of :name
    validates_length_of :name, :minimum => 5, :maximum => 20
end
