class Cate < ApplicationRecord
	has_many :product , dependent: :destroy

	validates :productname, presence: true, length: { minimum:2 ,maximum: 20 }
    #validates_format_of :productname, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/
     validates :productname, :format => { with: /\A\w+\z/, :message => 'No Special characters, only letters and numbers' }
end
