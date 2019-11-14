class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  

  before_action :check

  def check
    if current_user.present?
      # redirect_to laptops_path
    else 
      redirect_to root_url
  end
end

  def index
    @products = Product.all
  end

  def show

  end
  
  def new
    @product = Product.new

  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
#   def create
#     #binding.pry
#    cate = Cate.find_by(productname: params["product"]["category"])
#     #binding.pry
#    a = params["product"]["category"]
#    pc = Cate.select('productname')
   
#    for i in 0...pc.length do
#     if a == pc[i]['productname']
#       @product = cate.product.new(product_params)

#       respond_to do |format|
#       if @product.save
#         format.html { redirect_to @product, notice: 'Product was successfully created.' }
#         format.json { render :show, status: :created, location: @product }
#        # else
#        #   format.html { render :new }
#        #   format.json { render json: @product.errors, status: :unprocessable_entity ,notice: 'Select Valid Category'}
#         end
#       end
#          break
#      end

     

#  end
# end
   #@product = cate.product.new(product_params)

    #@cate = Cate.new(params[:cate])
    #@cate.product.create(params[:product])
    
def create
  @product = Cate.find_by(id: params['categories']).product.new(product_params)
   
   respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
       else
          format.html { render :new }
          format.json { render json: @product.errors, status: :unprocessable_entity ,notice: 'Select Valid Category'}
        end
      end

end

    
  

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :image, :description, :dat)
    end
end
