class LocalidadesController < ApplicationController
  before_action :set_localidade, only: %i[ show edit update destroy ]

  # GET /localidades or /localidades.json
  def index
    if params[:query].present?
      @pagy, @localidades = pagy(Localidade.where("nome LIKE ?", "%#{params[:query]}%").order(:nome))
    else
      @pagy, @localidades = pagy(Localidade.all.order(:nome))
    end
  end

  # GET /localidades/1 or /localidades/1.json
  def show
  end

  # GET /localidades/new
  def new
    @localidade = Localidade.new
  end

  # GET /localidades/1/edit
  def edit
  end

  # POST /localidades or /localidades.json
  def create
    @localidade = Localidade.new(localidade_params)

    respond_to do |format|
      if @localidade.save
        format.html { redirect_to localidade_url(@localidade), notice: "Localidade was successfully created." }
        format.json { render :show, status: :created, location: @localidade }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @localidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /localidades/1 or /localidades/1.json
  def update
    respond_to do |format|
      if @localidade.update(localidade_params)
        format.html { redirect_to localidade_url(@localidade), notice: "Localidade was successfully updated." }
        format.json { render :show, status: :ok, location: @localidade }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @localidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /localidades/1 or /localidades/1.json
  def destroy
    @localidade.destroy

    respond_to do |format|
      format.html { redirect_to localidades_url, notice: "Localidade was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_localidade
      @localidade = Localidade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def localidade_params
      params.require(:localidade).permit(:nome, :latitude, :longitude, :parada)
    end
end
