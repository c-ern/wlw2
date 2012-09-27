class Supermarket < ActiveRecord::Base
  has_many :supplies
  has_many :products, :through => :supplies
end

class Supply < ActiveRecord::Base
  belongs_to :product
  belongs_to :supermarket
end

class Product < ActiveRecord::Base
  has_many :supplies
  has_many :supermarkets, :through => :supplies

  has_many :origins
  has_many :brands, :through => :origins
end

class Origin < ActiveRecord::Base
  belongs_to :products
  belongs_to :brands
end

class Brand < ActiveRecord::Base
  has_many :origins
  has_many :products, :through => :origins
end

# And now the class I thought i could use to sotre a specific Product-Brand-combination

class Specific_Combination < ActiveRecord::Base
#to show which columns I would use
  attr_accessible :supermarket_id, :product_id, :brand_id
end


