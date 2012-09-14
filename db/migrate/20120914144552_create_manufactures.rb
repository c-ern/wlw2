class CreateManufactures < ActiveRecord::Migration
  def change
    create_table :manufactures do |t|
      t.integer :facility_id
      t.integer :product_id

      t.timestamps
    end
  end
end
