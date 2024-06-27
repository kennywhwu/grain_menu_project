# frozen_string_literal: true

module Types
  class ModifierType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :default_quantity, Integer, null: false
    field :item, Types::ItemType, null: false
    field :modifier_group, Types::ModifierGroupType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
