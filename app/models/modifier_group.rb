class ModifierGroup < ApplicationRecord
	has_many :modifiers
	has_many :item_modifier_groups
	has_many :items, through: :item_modifier_groups

	validates :identifier, :label, :selection_required_min, :selection_required_max, presence: true
end