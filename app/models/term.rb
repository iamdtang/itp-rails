class Term < ApplicationRecord
  has_and_belongs_to_many :courses

  def to_s
    "#{semester} #{year}"
  end

  def self.active_terms
    self.where({ active: true }).all
  end
end
