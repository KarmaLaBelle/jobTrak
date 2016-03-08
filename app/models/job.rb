class Job < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true, uniqueness: true, length: 10
  validates :jobtime, presence: true

  belongs_to :employees
end
