class Lecture < ApplicationRecord
  # has_many :resources
  has_and_belongs_to_many :resources
  belongs_to :course
end
