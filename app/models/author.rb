class Author < ActiveRecord::Base
  validates :first_name, :last_name, :age, presence: true
  validates :age, numericality: { only_integer: true }
  validates :first_name, length: { in: 4..20 }
  validates :last_name, length: { in: 4..20 }
end
