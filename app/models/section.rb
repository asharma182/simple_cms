class Section < ActiveRecord::Base
   attr_accessible :name, :position, :visible, :content_type, :content
end
