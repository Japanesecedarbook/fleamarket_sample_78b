class Aaa < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.references :product
      t.string :url   
      t.timestamps
    end
  end
end