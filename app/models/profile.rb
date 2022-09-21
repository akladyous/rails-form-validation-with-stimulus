class Profile < ApplicationRecord
  validates :first_name, :last_name, :age, presence: true
  validates :age, numericality: { only_integer: true, in: 18..65, message: 'age must be between 8 and 65' }

end
