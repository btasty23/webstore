class CreateMarketplaces < ActiveRecord::Migration[7.0]
  def change
    create_table :marketplaces do |t|
      t.string :image
      t.string :name
      t.string :price
      t.string :description
      t.string :quantity

      t.timestamps
    end
  end
end
