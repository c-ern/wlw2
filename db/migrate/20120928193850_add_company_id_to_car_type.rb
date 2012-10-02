class AddCompanyIdToCarType < ActiveRecord::Migration
  def change
    add_column :car_types, :company_id, :integer
  end
end
