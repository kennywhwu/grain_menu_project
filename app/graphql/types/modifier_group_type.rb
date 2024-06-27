# frozen_string_literal: true

module Types
  class ModifierGroupType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :min_required, Integer
    field :max_required, Integer
    field :item_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
