class CreateAffiliations < ActiveRecord::Migration
  def change
    create_table :affiliations do |t|
      t.integer :company_id
      t.integer :facility_id

      t.timestamps
    end
  end
end
