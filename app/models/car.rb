class Car < ActiveRecord::Base
  before_create :uppercase_brand_model


private
  def uppercase_brand_model
    self.brand.upcase!
    self.model.upcase!
  end
end
