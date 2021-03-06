class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update]

  # GET /patients
  # GET /patients.json
  def index
    @patients = Patient.all
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
    @visits = @patient.visits
    @doctors = @patient.doctors
    @invoices = @patient.invoices
    @paymethods = @patient.paymethods
  end

  # GET /patients/new
  def new
    @patient = Patient.new
    @doctors = Doctor.all
  end

  # GET /patients/1/edit
  def edit
    @doctors = Doctor.all
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
      else
        @doctors = Docotr.all
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        @doctors = Docotr.all
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  /def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end/

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      #params.fetch(:patient, {})
	    params.require(:patient).permit(:firstname, :lastname, :email, :birthday, :sex, :homephone, :cellphone, :workphone, :extension, :primaryaddress, :country, :province, :city, :postalcode, :comments, {:doctor_ids => []})
    end
end
