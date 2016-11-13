class Lecture < ApplicationRecord
  has_many :resources
  belongs_to :course
end
