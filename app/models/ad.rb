class Ad < ApplicationRecord
  belongs_to :category
  belongs_to :member

  monetize :price_cents

   has_attached_file :picture, styles: { medium: "300x150>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
   validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end
