class Job < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true, uniqueness: true, length: { is: 10 }
  validates :jobtime, presence: true

  belongs_to :employee
end
