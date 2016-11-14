class Course < ApplicationRecord
  has_and_belongs_to_many :terms
  has_many :assignments
  has_many :lectures
end
