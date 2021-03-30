class Region < ApplicationRecord
	has_many :cities

	validates :name, uniqueness: true

	scope :more_than, -> (number) { select(:id, :name, "COUNT(regions.id) as count").
		                            joins(cities: :feedbacks).
		                            group(:id).having('count(feedbacks.id) > ?', number) }
end
