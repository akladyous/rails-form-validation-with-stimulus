class Profile < ApplicationRecord

  validates :first_name, :last_name, :age, presence: true
  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 18, less_than_or_equal_to: 65 }

  before_create ProfileCallback

end
