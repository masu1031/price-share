class CreatePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :prices do |t|
      t.integer    :price, null: false
      # t.references :group, foreign_key: true
      # t.references :card,  foreign_key: true
      # t.references :shop,  foreign_key: true

      t.timestamps
    end
  end
end
