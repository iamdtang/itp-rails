class Term < ApplicationRecord
  has_and_belongs_to_many :courses

  def to_s
    "#{semester} #{year}"
  end
end
