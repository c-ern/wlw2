class Affiliation < ActiveRecord::Base
  attr_accessible :company_id, :facility_id

  belongs_to :company
  belongs_to :facility
end
