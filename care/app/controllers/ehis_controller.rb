class EhisController < ApplicationController
  before_action :set_ehi, only: [:show, :edit, :update, :destroy]

  # GET /ehis
  # GET /ehis.json
  def index
    @ehis = Ehi.all
  end

  # GET /ehis/1
  # GET /ehis/1.json
  def show
  end

  # GET /ehis/new
  def new
    @ehi = Ehi.new
  end

  # GET /ehis/1/edit
  def edit
  end

  # POST /ehis
  # POST /ehis.json
  def create
    @ehi = Ehi.new(ehi_params)

    respond_to do |format|
      if @ehi.save
        format.html { redirect_to @ehi, notice: 'Ehi was successfully created.' }
        format.json { render :show, status: :created, location: @ehi }
      else
        format.html { render :new }
        format.json { render json: @ehi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ehis/1
  # PATCH/PUT /ehis/1.json
  def update
    respond_to do |format|
      if @ehi.update(ehi_params)
        format.html { redirect_to @ehi, notice: 'Ehi was successfully updated.' }
        format.json { render :show, status: :ok, location: @ehi }
      else
        format.html { render :edit }
        format.json { render json: @ehi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ehis/1
  # DELETE /ehis/1.json
  def destroy
    @ehi.destroy
    respond_to do |format|
      format.html { redirect_to ehis_url, notice: 'Ehi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ehi
      @ehi = Ehi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ehi_params
      params.fetch(:ehi, {})
    end
end
