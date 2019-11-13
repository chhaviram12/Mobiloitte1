class Cate < ApplicationRecord
	has_many :product , dependent: :destroy
end
