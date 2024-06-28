class RenameTypeToProductTypeInItems < ActiveRecord::Migration[7.1]
  def change
    rename_column :items, :type, :product_type
  end
end
