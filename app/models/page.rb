class Page < ActiveRecord::Base
   attr_accessible :subject_id, :name, :permalink, :position, :visible
   belongs_to :subject
end
