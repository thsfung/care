class PaymethodsController < ApplicationController
  before_action :set_paymethod, only: [:show, :edit, :update]

  # GET /paymethods
  # GET /paymethods.json
  def index
    @paymethods = Paymethod.all
  end

  # GET /paymethods/1
  # GET /paymethods/1.json
  def show
    @patient_id = @paymethod.patient_id
  end

  # GET /paymethods/new
  def new
    @paymethod = Paymethod.new
    @patient_id = params[:patient_id] 
  end

  # GET /paymethods/1/edit
  def edit
    @patient_id = @paymethod.patient_id
  end

  # POST /paymethods
  # POST /paymethods.json
  def create
    @paymethod = Paymethod.new(paymethod_params)

    respond_to do |format|
      if @paymethod.save
        format.html { redirect_to Patient.find_by_id(@paymethod.patient_id), notice: 'Paymethod was successfully created.' }
        format.json { render :show, status: :created, location: @paymethod }
      else
        @patient_id = @paymethod.patient_id
        format.html { render :new }
        format.json { render json: @paymethod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paymethods/1
  # PATCH/PUT /paymethods/1.json
  def update
    respond_to do |format|
      if @paymethod.update(paymethod_params)
        format.html { redirect_to Patient.find_by_id(@paymethod.patient_id), notice: 'Paymethod was successfully updated.' }
        format.json { render :show, status: :ok, location: @paymethod }
      else
        @patient_id = @paymethod.patient_id
        format.html { render :edit }
        format.json { render json: @paymethod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paymethods/1
  # DELETE /paymethods/1.json
  /def destroy
    @paymethod.destroy
    respond_to do |format|
      format.html { redirect_to Patient.find_by_id(@paymethod.patient_id), notice: 'Paymethod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end/

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paymethod
      @paymethod = Paymethod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paymethod_params
      #params.fetch(:paymethod, {})
      params.require(:paymethod).permit(:paytype, :company, :holdername, :holderbday, :relationshiptoclient, :adjustorphone, :claimnumber, :adjustorname, :branchnumber, :patient_id)
    end
end
