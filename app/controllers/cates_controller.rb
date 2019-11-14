class CatesController < ApplicationController
  before_action :set_cate, only: [:show, :edit, :update, :destroy]
  before_action :check

  def check
    if current_user.present?
      # redirect_to laptops_path
    else 
      redirect_to root_url
  end
end
  # GET /cates
  # GET /cates.json
  def index
    @cates = Cate.all
  end

  # GET /cates/1
  # GET /cates/1.json
  def show
    #binding.pry
    @cate = Cate.find_by(id: params[:id]).product.all
  end

  # GET /cates/new
  def new
    @cate = Cate.new
  end

  # GET /cates/1/edit
  def edit
  end

  # POST /cates
  # POST /cates.json
  def create
    @cate = Cate.new(cate_params)

    respond_to do |format|
      if @cate.save
        format.html { redirect_to @cate, notice: 'Cate was successfully created.' }
        format.json { render :show, status: :created, location: @cate }
      else
        format.html { render :new }
        format.json { render json: @cate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cates/1
  # PATCH/PUT /cates/1.json
  def update
    respond_to do |format|
      if @cate.update(cate_params)
        format.html { redirect_to @cate, notice: 'Cate was successfully updated.' }
        format.json { render :show, status: :ok, location: @cate }
      else
        format.html { render :edit }
        format.json { render json: @cate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cates/1
  # DELETE /cates/1.json
  def destroy
    @cate.destroy
    redirect_to 'cate_path'
    # respond_to do |format|
    #   format.html { redirect_to cates_url, notice: 'Cate was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cate
      @cate = Cate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cate_params
      params.require(:cate).permit(:productname)
    end
end
