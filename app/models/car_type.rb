class CarType < ActiveRecord::Base
  attr_accessible :name, :wikipedia_url, :company_id

  has_many :car_configurations
  belongs_to :company
end
