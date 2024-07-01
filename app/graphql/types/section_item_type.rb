# frozen_string_literal: true

module Types
  class SectionItemType < Types::BaseObject
    field :id, ID, null: false
    field :sections, [Types::Section], null: false
    field :items, [Types::Item], null: false
    field :display_order, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
