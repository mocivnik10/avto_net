class Car < ActiveRecord::Base
  before_create :uppercase_brand_model

  has_attached_file :car_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :car_image, content_type: /\Aimage\/.*\Z/

private
  def uppercase_brand_model
    self.brand.upcase!
    self.model.upcase!
  end
end
