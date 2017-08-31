class MvasController < ApplicationController
  before_action :set_mva, only: [:show, :edit, :update, :destroy]

  # GET /mvas
  # GET /mvas.json
  def index
    @mvas = Mva.all
  end

  # GET /mvas/1
  # GET /mvas/1.json
  def show
  end

  # GET /mvas/new
  def new
    @mva = Mva.new
  end

  # GET /mvas/1/edit
  def edit
  end

  # POST /mvas
  # POST /mvas.json
  def create
    @mva = Mva.new(mva_params)

    respond_to do |format|
      if @mva.save
        format.html { redirect_to @mva, notice: 'Mva was successfully created.' }
        format.json { render :show, status: :created, location: @mva }
      else
        format.html { render :new }
        format.json { render json: @mva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mvas/1
  # PATCH/PUT /mvas/1.json
  def update
    respond_to do |format|
      if @mva.update(mva_params)
        format.html { redirect_to @mva, notice: 'Mva was successfully updated.' }
        format.json { render :show, status: :ok, location: @mva }
      else
        format.html { render :edit }
        format.json { render json: @mva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mvas/1
  # DELETE /mvas/1.json
  def destroy
    @mva.destroy
    respond_to do |format|
      format.html { redirect_to mvas_url, notice: 'Mva was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mva
      @mva = Mva.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mva_params
      #params.fetch(:mva, {})
      params.require(:mva).permit(:holdername, :holderbday, :claimnumber, :relationshiptoclient, :adjustorname, :branchnumber, :company)
    end
end
