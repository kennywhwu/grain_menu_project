class MenuSection < ApplicationRecord
	belongs_to :menu
	belongs_to :section

	validates :menu_id, :section_id, :display_order, presence: true
end
