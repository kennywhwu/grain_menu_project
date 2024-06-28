class Modifier < ApplicationRecord
	belongs_to :item
	belongs_to :modifier_group

	validates :item_id, :modifier_group_id, :display_order, :default_quantity, :price_override, presence: true
end