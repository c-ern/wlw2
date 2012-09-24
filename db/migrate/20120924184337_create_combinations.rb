class CreateCombinations < ActiveRecord::Migration
  def change
    create_table :combinations do |t|
      t.integer :product_id
      t.integer :car_body_style_id

      t.timestamps
    end
  end
end
