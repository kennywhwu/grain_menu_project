class Menu < ApplicationRecord
	has_many :menu_sections
	has_many :sections, through: :menu_sections

	validates :identifier, :label, :state, :start_date, :end_date, presence: true
end
