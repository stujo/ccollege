class Student < ActiveRecord::Base
  belongs_to :squad
  has_one :instructor, :through => :squad
end
