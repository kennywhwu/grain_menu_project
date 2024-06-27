class CreateModifierGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :modifier_groups do |t|
      t.string :name
      t.integer :min_required
      t.integer :max_required
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
