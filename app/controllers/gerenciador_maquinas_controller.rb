class GerenciadorMaquinasController < ApplicationController
  before_action :set_gerenciador_maquina, only: %i[ show edit update destroy before_destroy  ]

  # GET /gerenciador_maquinas or /gerenciador_maquinas.json
  def index
    @gerenciador_maquinas = GerenciadorMaquina.all
  end

  # GET /gerenciador_maquinas/1 or /gerenciador_maquinas/1.json
  def show
  end

  # GET /gerenciador_maquinas/new
  def new
    @gerenciador_maquina = GerenciadorMaquina.new
  end

  # GET /gerenciador_maquinas/1/edit
  def edit
  end

  # POST /gerenciador_maquinas or /gerenciador_maquinas.json
  def create
    @gerenciador_maquina = GerenciadorMaquina.new(gerenciador_maquina_params)
  
    respond_to do |format|
      if @gerenciador_maquina.save
        format.html { redirect_to @gerenciador_maquina, notice: "Máquina criada com sucesso." }
        format.json { render :show, status: :created, location: @gerenciador_maquina }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gerenciador_maquina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gerenciador_maquinas/1 or /gerenciador_maquinas/1.json
  def update
    respond_to do |format|
      if @gerenciador_maquina.update(gerenciador_maquina_params)
        format.html { redirect_to @gerenciador_maquina, notice: "A máquina foi atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @gerenciador_maquina }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gerenciador_maquina.errors, status: :unprocessable_entity }
      end
    end
  end
  def before_destroy
    @gerenciador_maquina.ValidaMaquina.before_destroy
    return true if :created_at + 1800.seconds > :created_at
    errors.add :base, "A máquina não pode ser excluído "
    false
    throw(:abort)
  end 

  # DELETE /gerenciador_maquinas/1 or /gerenciador_maquinas/1.json
  def destroy
    @gerenciador_maquina.destroy
    
      respond_to do |format|
      format.html { redirect_to gerenciador_maquinas_url, notice: "Máquina destruída com sucesso." }
      format.json { head :no_content }
      end
    end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gerenciador_maquina
      @gerenciador_maquina = GerenciadorMaquina.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gerenciador_maquina_params
      params.require(:gerenciador_maquina).permit(:machine_type, :name, :description, :month, :purchace_date, :broken)
    end
end
