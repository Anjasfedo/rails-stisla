class PembeliansController < ApplicationController
  load_and_authorize_resource

  before_action :set_pembelian, only: %i[ show edit update destroy ]

  # GET /pembelians
  def index
    @pembelians = Pembelian.all
  end

  # GET /pembelians/1
  def show
  end

  # GET /pembelians/new
  def new
    @pembelian = Pembelian.new
  end

  # GET /pembelians/1/edit
  def edit
  end

  # POST /pembelians
  def create
    @pembelian = Pembelian.new(pembelian_params)

    respond_to do |format|
      if @pembelian.save
          format.html { redirect_to pembelians_url, notice: "Pembelian was successfully created." }
          format.json { render :show, status: :created, location: @pembelian }
      else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @pembelian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pembelians/1
  def update
    respond_to do |format|
      if @pembelian.update(pembelian_params)
          format.html { redirect_to pembelians_url, notice: "Pembelian was successfully updated." }
          format.json { render :show, status: :ok, location: @task }
      else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @pembelian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pembelians/1
  def destroy
    @pembelian.destroy!

    respond_to do |format|
      format.html { redirect_to pembelians_url, notice: "Pembelian was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pembelian
      @pembelian = Pembelian.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pembelian_params
      params.require(:pembelian).permit(:kode_barang, :nama_barang, :jumlah_barang, :status)
    end
end
