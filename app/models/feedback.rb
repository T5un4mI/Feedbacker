class Feedback < ApplicationRecord
  belongs_to :city

  validates :first_name, :last_name, :middle_name, presence: true
  validates :phone, format: { with:  /\A\(\d{3,5}\)\d{3,15}\z/i }
  validates :email, length: { in: 5..50 }
  validates :email, format: { with:  /\A[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}\z/i }
end
