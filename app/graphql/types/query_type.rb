# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :menus, [Types::MenuType], null: false

    def menus
      Menu.all
    end
  end
end