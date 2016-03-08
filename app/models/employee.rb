class Employee < ActiveRecord::Base
  validates :name, presence: true
  validates :phone_number, presence: true, uniqueness: true, format: { with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}\z/ }

  has_many :jobs
end
