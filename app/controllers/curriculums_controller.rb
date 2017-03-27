class CurriculumsController < ApplicationController
  before_action :set_curriculum, only: [:show, :edit, :update, :destroy]
  before_action :validate_user_curriculum, only: [:show, :edit]
  before_action :protect_curriculums_list, only: [:index]

  # GET /curriculums
  # GET /curriculums.json
  def index
    @curriculums = Curriculum.all
  end

  # GET /curriculums/1
  # GET /curriculums/1.json
  def show
  end

  # GET /curriculums/new
  def new
    @curriculum = Curriculum.new
  end

  # GET /curriculums/1/edit
  def edit
  end

  # POST /curriculums
  # POST /curriculums.json
  def create
    # current_user.curriculum = Curriculum.new(curriculum_params)
    # @curriculum = current_user.curriculum
    @curriculum = Curriculum.new(curriculum_params)
    @curriculum.user = current_user

    respond_to do |format|
      if @curriculum.save
        format.html { redirect_to @curriculum, notice: 'Curriculum was successfully created.' }
        format.json { render :show, status: :created, location: @curriculum }
      else
        format.html { render :new }
        format.json { render json: @curriculum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curriculums/1
  # PATCH/PUT /curriculums/1.json
  def update
    respond_to do |format|
      if @curriculum.update(curriculum_params)
        format.html { redirect_to @curriculum, notice: 'Curriculum was successfully updated.' }
        format.json { render :show, status: :ok, location: @curriculum }
      else
        format.html { render :edit }
        format.json { render json: @curriculum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curriculums/1
  # DELETE /curriculums/1.json
  def destroy
    @curriculum.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'El curriculum ha sido destruido satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curriculum
      @curriculum = Curriculum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curriculum_params
      params.require(:curriculum).permit(:nombre, :edad, :sexo, :direccion, :codigo_postal, :ciudad, :estado, :email, :telefono, :celular, :especialidad, :grado_estudios, :sueldo_dec, :herramientas_usadas)
    end

    # Validando que el curriculum le pertenece al usuario, si no es así se
    # redireccionará al usuario a su perfil.
    def validate_user_curriculum
      if current_user.id != @curriculum.user_id
        respond_to do |format|
          format.html { redirect_to root_path, notice: 'No tiene permitido entrar a esta vista.' }
          format.js { render js: "nope_url()" }
        end
      end
    end

    #Evitando que algun usuario común entre a la lista de curriculums
    def protect_curriculums_list
      if current_user
        respond_to do |format|
          format.html { redirect_to root_path, notice: 'No tiene permitido entrar a esta vista.' }
          format.js { render js: "nope_url()" }
        end
      end
    end
end
