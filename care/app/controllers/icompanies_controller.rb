class IcompaniesController < ApplicationController
  before_action :set_icompany, only: [:show, :edit, :update, :destroy]

  # GET /icompanies
  # GET /icompanies.json
  def index
    @icompanies = Icompany.all
  end

  # GET /icompanies/1
  # GET /icompanies/1.json
  def show
  end

  # GET /icompanies/new
  def new
    @icompany = Icompany.new
  end

  # GET /icompanies/1/edit
  def edit
  end

  # POST /icompanies
  # POST /icompanies.json
  def create
    @icompany = Icompany.new(icompany_params)

    respond_to do |format|
      if @icompany.save
        format.html { redirect_to @icompany, notice: 'Icompany was successfully created.' }
        format.json { render :show, status: :created, location: @icompany }
      else
        format.html { render :new }
        format.json { render json: @icompany.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /icompanies/1
  # PATCH/PUT /icompanies/1.json
  def update
    respond_to do |format|
      if @icompany.update(icompany_params)
        format.html { redirect_to @icompany, notice: 'Icompany was successfully updated.' }
        format.json { render :show, status: :ok, location: @icompany }
      else
        format.html { render :edit }
        format.json { render json: @icompany.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /icompanies/1
  # DELETE /icompanies/1.json
  def destroy
    @icompany.destroy
    respond_to do |format|
      format.html { redirect_to icompanies_url, notice: 'Icompany was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_icompany
      @icompany = Icompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def icompany_params
      params.fetch(:icompany, {})
    end
end
