class CreateCarBodyStyles < ActiveRecord::Migration
  def change
    create_table :car_body_styles do |t|
      t.string :name
      t.string :wikipedia_url

      t.timestamps
    end
  end
end
