class CooperadosController < ApplicationController
  before_action :set_cooperado, only: %i[ show edit update destroy ]

  # GET /cooperados or /cooperados.json
  def index
    if params[:query].present?
      @pagy, @cooperados = pagy(Cooperado.where("nome LIKE ? or matricula = ?", "%#{params[:query]}%", "%#{params[:query]}%").order(:nome))
    else
      @pagy, @cooperados = pagy(Cooperado.all.order(:nome))
    end
  end

  # GET /cooperados/1 or /cooperados/1.json
  def show
  end

  # GET /cooperados/new
  def new
    @cooperado = Cooperado.new
  end

  # GET /cooperados/1/edit
  def edit
  end

  # POST /cooperados or /cooperados.json
  def create
    @cooperado = Cooperado.new(cooperado_params)

    respond_to do |format|
      if @cooperado.save
        format.html { redirect_to cooperado_url(@cooperado), notice: "Cooperado was successfully created." }
        format.json { render :show, status: :created, location: @cooperado }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cooperado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cooperados/1 or /cooperados/1.json
  def update
    respond_to do |format|
      if @cooperado.update(cooperado_params)
        format.html { redirect_to cooperado_url(@cooperado), notice: "Cooperado was successfully updated." }
        format.json { render :show, status: :ok, location: @cooperado }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cooperado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cooperados/1 or /cooperados/1.json
  def destroy
    @cooperado.destroy

    respond_to do |format|
      format.html { redirect_to cooperados_url, notice: "Cooperado was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cooperado
      @cooperado = Cooperado.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cooperado_params
      params.require(:cooperado).permit(:nome, :matricula, :apelido, :nascimento, :telefone, :celular, :logradouro, :numero, :complemento, :bairro, :cidade, :estado, :cep, :cpf, :cnh_registro, :cnh_categoria, :cnh_vencimento, :tipo_sanguineo, :data_admissao, :data_demissao, :imagem)
    end
end
