class MakanansController < ApplicationController
  before_action :set_makanan, only: %i[ show edit update destroy ]

  # GET /makanans or /makanans.json
  def index
    @makanans = Makanan.all
  end

  # GET /makanans/1 or /makanans/1.json
  def show
  end

  # GET /makanans/new
  def new
    @makanan = Makanan.new
  end

  # GET /makanans/1/edit
  def edit
  end

  # POST /makanans or /makanans.json
  def create
    @makanan = Makanan.new(makanan_params)

    respond_to do |format|
      if @makanan.save
        format.html { redirect_to makanan_url(@makanan), notice: "Makanan was successfully created." }
        format.json { render :show, status: :created, location: @makanan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @makanan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /makanans/1 or /makanans/1.json
  def update
    respond_to do |format|
      if @makanan.update(makanan_params)
        format.html { redirect_to makanan_url(@makanan), notice: "Makanan was successfully updated." }
        format.json { render :show, status: :ok, location: @makanan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @makanan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /makanans/1 or /makanans/1.json
  def destroy
    @makanan.destroy!

    respond_to do |format|
      format.html { redirect_to makanans_url, notice: "Makanan was successfully destroyed." }
      format.json { head :no_content }
    end
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
