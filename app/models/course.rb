class Course < ApplicationRecord
  has_many :terms
  has_many :assignments
  has_many :lectures
end
