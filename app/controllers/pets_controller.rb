class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]
  
  # GET /pets
  # GET /pets.json
  def index
    @pets = Pet.all
  end

  def listabusca
 @pets = Pet.all
  end
  # GET /pets/1
  # GET /pets/1.json
  def show
    @pets = Pet.all
  end

  # GET /pets/new
  def new
    @pet = Pet.new
  end

  # GET /pets/1/edit
  def edit
  end

  # POST /pets
  # POST /pets.json
  def create
    @pet = Pet.new(pet_params)

    respond_to do |format|
      if @pet.save
        format.html { redirect_to home_path, notice: 'Pet was successfully created.' }
        format.json { render :show, status: :created, location: @pet }
      else
        format.html { redirect_to petcadastro_path, notice: 'Pet was not successfully created.' }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

def busca_perfil

  respond_to do |format|
session[:nome]=params[:session][:nome]
        session[:email]=params[:session][:email]
      if !params[:session][:nome].empty? && !params[:session][:email].empty?
        
        session[:apartamento]=params[:session][:apartamento]
        params[:session][:condominio]=params[:session][:condominio]
        params[:session][:areapet]=params[:session][:areapet]
        params[:session][:horalivre]=params[:session][:horalivre]
        params[:session][:crianca]=params[:session][:crianca]
        params[:session][:caosozinho]=params[:session][:caosozinho]
        params[:session][:caosala]=params[:session][:caosala]
        params[:session][:renda]=params[:session][:renda]
       format.html {  redirect_to listabusca_path, notice: 'Usuario logado com sucesso' }
       format.json { }
     else
       format.html {  redirect_to busca_path, error: 'Insira um nome e um email' }
       format.json { }
      end
    end

end


  # PATCH/PUT /pets/1
  # PATCH/PUT /pets/1.json
  def update
    respond_to do |format|
      if @pet.update(pet_params)
        format.html { redirect_to @pet, notice: 'Pet was successfully updated.' }
        format.json { render :show, status: :ok, location: @pet }
      else
        format.html { render :edit }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pets/1
  # DELETE /pets/1.json
  def destroy
    @pet.destroy
    respond_to do |format|
      format.html { redirect_to pets_url, notice: 'Pet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = Pet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_params
      params.require(:pet).permit(:doadornome, :doadoremail, :petnome, :petraca, :petimagem, :petimagem_url, :petobservacoes, :petinsercao, :petidade, :pettamanho, :petchora, :petsegue, :petagitado, :petlateestranhos, :petavanca, :petproblemassaude)
    end
end
