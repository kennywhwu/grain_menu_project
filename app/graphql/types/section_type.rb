# frozen_string_literal: true

module Types
  class SectionType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :menu, Types::MenuType, null: false
    field :items, [Types::ItemType], null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
