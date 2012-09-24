class CreateAssemblies < ActiveRecord::Migration
  def change
    create_table :assemblies do |t|
      t.integer :facility_id
      t.integer :combination_id

      t.timestamps
    end
  end
end
