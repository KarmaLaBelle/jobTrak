class Job < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true, uniqueness: true, format: { with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}\z/ }
  validates :jobtime, presence: true

  belongs_to :employee
end
