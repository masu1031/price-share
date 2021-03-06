class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string     :name,         null: false, default: ""
      t.integer    :expansion_id, null: false
      t.integer    :rarity_id
      t.integer    :card_type_id, null: false
      t.integer    :attribute_id
      t.references :group,        null: false, foreign_key: true

      t.timestamps
    end
  end
end
