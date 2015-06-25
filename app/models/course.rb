class Course < ActiveRecord::Base
  belongs_to :company
  belongs_to :location
end
