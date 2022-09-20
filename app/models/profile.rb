class Profile < ApplicationRecord
  validates :first_name, :last_name, :age, presence: true
  validates :age, numericality: { only_integer: true, in: 18..65 }

end
