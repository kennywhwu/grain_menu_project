class ItemModifierGroup < ApplicationRecord
	belongs_to :item
	belongs_to :modifier_group

	validates :item_id, :modifier_group_id, presence: true
end