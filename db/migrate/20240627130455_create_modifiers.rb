class CreateModifiers < ActiveRecord::Migration[7.1]
  def change
    create_table :modifiers do |t|
      t.string :name
      t.integer :default_quantity
      t.references :item, null: false, foreign_key: true
      t.references :modifier_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
