class HomeController < ApplicationController
  def index
  	
  	cates = Cate.select('productname')
  	products = Product.select('name')

  	@cc = cates.length
  	@pc = products.length
  end


end
