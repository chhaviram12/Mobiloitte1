class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :cate

  
  validates :name, presence: true, length: { maximum: 20 }, :format => { :with => /\A\w+\z/ }
  validates :description, presence: true, length: { maximum: 100 , minimum:10}
  validates :dat, presence: true
  validates_format_of :image, :with => %r{\.(png|jpg|jpeg)}i, :message => "only .jpg ang .png"




end
