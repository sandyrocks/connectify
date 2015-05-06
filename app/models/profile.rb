class Profile < ActiveRecord::Base
	belongs_to :users
	validates :first_name, :last_name, :age, presence: true
	validates :mobile_number, length: { is: 10  }
	validates :age, numericality: {greater_than_or_equal_to: 16, less_than_or_equal_to: 40}
end
