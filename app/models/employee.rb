class Employee < ActiveRecord::Base
  validates :name, presence: true
  validates :phone_number, presence: true, uniqueness: true, length: { is: 10 }

  has_many :jobs
end
