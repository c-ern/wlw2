class CreateCarTypes < ActiveRecord::Migration
  def change
    create_table :car_types do |t|
      t.string :name
      t.string :wikipedia_url

      t.timestamps
    end
  end
end
