class Assembly < ActiveRecord::Base
  attr_accessible :car_configuration_id, :facility_id

  belongs_to :facility
  belongs_to :car_configuration
end
