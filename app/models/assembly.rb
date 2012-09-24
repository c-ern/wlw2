class Assembly < ActiveRecord::Base
  attr_accessible :combination_id, :facility_id

  belongs_to :facility  
  belongs_to :combination 
end
