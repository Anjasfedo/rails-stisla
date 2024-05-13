class MakanansController < ApplicationController
  before_action :set_makanan, only: %i[ show edit update destroy ]

  # GET /makanans
  def index
    @makanans = Makanan.all
  end

  # GET /makanans/1
  def show
  end

  # GET /makanans/new
  def new
    @makanan = Makanan.new
  end

  # GET /makanans/1/edit
  def edit
  end

  # POST /makanans
  def create
    @makanan = Makanan.new(makanan_params)

    if @makanan.save
      redirect_to makanans_url, notice: "Makanan was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /makanans/1
  def update
    if @makanan.update(makanan_params)
      redirect_to makanans_url, notice: "Makanan was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /makanans/1
  def destroy
    @makanan.destroy!
    redirect_to makanans_url, notice: "Makanan was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_makanan
      @makanan = Makanan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def makanan_params
      params.require(:makanan).permit(:name, :halal, :price, :image)
    end
end
