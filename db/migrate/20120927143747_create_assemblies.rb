class CreateAssemblies < ActiveRecord::Migration
  def change
    create_table :assemblies do |t|
      t.integer :facility_id
      t.integer :car_configuration_id

      t.timestamps
    end
  end
end
