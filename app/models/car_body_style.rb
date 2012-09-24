class CarBodyStyle < ActiveRecord::Base
  attr_accessible :name, :wikipedia_url

  has_many :combinations
end
