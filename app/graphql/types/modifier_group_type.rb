# frozen_string_literal: true

module Types
  class ModifierGroupType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :min_required, Integer, null: false
    field :max_required, Integer, null: false
    field :item, Types::ItemType, null: false
    field :modifiers, [Types::ModifierType], null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
