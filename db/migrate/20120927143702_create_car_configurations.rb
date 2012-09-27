class CreateCarConfigurations < ActiveRecord::Migration
  def change
    create_table :car_configurations do |t|
      t.integer :car_type_id
      t.integer :car_body_style_id

      t.timestamps
    end
  end
end
