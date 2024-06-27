class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :item_type
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
