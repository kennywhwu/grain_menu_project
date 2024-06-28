class SectionItem < ApplicationRecord
	belongs_to :section
	belongs_to :item

	validates :section_id, :item_id, :display_order, presence: true
end
