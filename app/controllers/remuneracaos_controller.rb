class RemuneracaosController < ApplicationController
  before_action :set_remuneracao, only: [:show, :edit, :update, :destroy]

  # GET /remuneracaos
  # GET /remuneracaos.json
  def index
    @remuneracaos = Remuneracao.where(nil)
    filtering_params(params).each do |key, value|
      @remuneracaos = @remuneracaos.public_send(key, value) if value.present?
    end
  end

  # GET /remuneracaos/1
  # GET /remuneracaos/1.json
  def show
  end

  # GET /remuneracaos/new
  def new
    @remuneracao = Remuneracao.new
  end

  # GET /remuneracaos/1/edit
  def edit
  end

  # POST /remuneracaos
  # POST /remuneracaos.json
  def create
    @remuneracao = Remuneracao.new(remuneracao_params)

    respond_to do |format|
      if @remuneracao.save
        format.html { redirect_to @remuneracao, notice: 'Remuneracao was successfully created.' }
        format.json { render :show, status: :created, location: @remuneracao }
      else
        format.html { render :new }
        format.json { render json: @remuneracao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /remuneracaos/1
  # PATCH/PUT /remuneracaos/1.json
  def update
    respond_to do |format|
      if @remuneracao.update(remuneracao_params)
        format.html { redirect_to @remuneracao, notice: 'Remuneracao was successfully updated.' }
        format.json { render :show, status: :ok, location: @remuneracao }
      else
        format.html { render :edit }
        format.json { render json: @remuneracao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /remuneracaos/1
  # DELETE /remuneracaos/1.json
  def destroy
    @remuneracao.destroy
    respond_to do |format|
      format.html { redirect_to remuneracaos_url, notice: 'Remuneracao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_remuneracao
      @remuneracao = Remuneracao.find(params[:id])
    end
    def filtering_params(params)
      params.slice(:nome, :competencia)
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def remuneracao_params
      params.require(:remuneracao).permit(:nome, :estabelecimento, :cargo, :competencia, :provento)
    end
end
