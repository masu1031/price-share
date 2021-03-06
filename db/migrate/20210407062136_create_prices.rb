class CreatePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :prices do |t|
      t.integer    :price, null: false
      t.references :group, null: false, foreign_key: true
      t.references :card,  null: false, foreign_key: true
      t.references :shop,  null: false, foreign_key: true

      t.timestamps
    end
  end
end
