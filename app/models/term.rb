class Term < ApplicationRecord
  belongs_to :course

  def to_s
    "#{semester} #{year} - #{course.name}"
  end
end
