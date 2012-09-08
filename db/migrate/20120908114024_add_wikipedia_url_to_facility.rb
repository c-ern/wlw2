class AddWikipediaUrlToFacility < ActiveRecord::Migration
  def change
    add_column :facilities, :wikipedia_url, :string
  end
end
