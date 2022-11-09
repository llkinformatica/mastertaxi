class TabelaPrecosValoresController < ApplicationController
  before_action :set_tabela_precos_valor, only: %i[ show edit update destroy ]

  # GET /tabela_precos_valores or /tabela_precos_valores.json
  def index
    @tabela_precos_valores = TabelaPrecosValor.all
  end

  # GET /tabela_precos_valores/1 or /tabela_precos_valores/1.json
  def show
  end

  # GET /tabela_precos_valores/new
  def new
    @tabela_precos_valor = TabelaPrecosValor.new
  end

  # GET /tabela_precos_valores/1/edit
  def edit
  end

  # POST /tabela_precos_valores or /tabela_precos_valores.json
  def create
    @tabela_precos_valor = TabelaPrecosValor.new(tabela_precos_valor_params)

    respond_to do |format|
      if @tabela_precos_valor.save
        format.html { redirect_to tabela_precos_valor_url(@tabela_precos_valor), notice: "Tabela precos valor was successfully created." }
        format.json { render :show, status: :created, location: @tabela_precos_valor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tabela_precos_valor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tabela_precos_valores/1 or /tabela_precos_valores/1.json
  def update
    respond_to do |format|
      if @tabela_precos_valor.update(tabela_precos_valor_params)
        format.html { redirect_to tabela_precos_valor_url(@tabela_precos_valor), notice: "Tabela precos valor was successfully updated." }
        format.json { render :show, status: :ok, location: @tabela_precos_valor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tabela_precos_valor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tabela_precos_valores/1 or /tabela_precos_valores/1.json
  def destroy
    @tabela_precos_valor.destroy

    respond_to do |format|
      format.html { redirect_to tabela_precos_valores_url, notice: "Tabela precos valor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tabela_precos_valor
      @tabela_precos_valor = TabelaPrecosValor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tabela_precos_valor_params
      params.require(:tabela_precos_valor).permit(:tabela_preco_id, :itinerario_id, :valor_corrida, :valor_hora_espera, :valor_km_deslocamento)
    end
end
