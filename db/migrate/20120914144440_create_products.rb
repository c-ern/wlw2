class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :prod_type
      t.string :car_body_style
      t.string :wikipedia_url

      t.timestamps
    end
  end
end
