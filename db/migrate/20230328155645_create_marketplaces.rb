class CreateMarketplaces < ActiveRecord::Migration[7.0]
  def change
    create_table :marketplaces do |t|
      t.string :image
      t.string :name
      t.decimal :price
      t.string :description
      t.integer :quantity

      t.timestamps
    end
  end
end
