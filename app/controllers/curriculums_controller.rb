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

  def date_appointment
    Curriculum.set_relation
    @curriculum = Curriculum.find(params[:curriculum_id])
    @curriculum.update(date_appointment: params[:date_appointment],time_appointment: params[:time_appointment],recruit_id: params[:recruit_id],has_date: true)
    @curriculum.user.status = 1
    @curriculum.user.save!
    respond_to do |format|
      format.html { redirect_to new_list_path, notice: "Se ha establecido cita para el día #{@curriculum.date_appointment.strftime('%F')} a las #{@curriculum.time_appointment.strftime('%H:%M')}" }
    end
  end

  def remove_date_appointment
    @curriculum = Curriculum.find(params[:id])
    @curriculum.date_appointment = nil
    @curriculum.time_appointment = nil
    @curriculum.has_date = false
    @curriculum.save
    redirect_to diary_path
  end

  def drop_cv
    @curriculum = Curriculum.find(params[:curriculum_id])
    @user = @curriculum.user
    @user.baja = true
    @user.description = params[:description]
    @user.status = 2
    @user.save
    @curriculum.destroy!
    redirect_to recruits_root_path
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_curriculum
    @curriculum = Curriculum.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def curriculum_params
    params.require(:curriculum).permit(:nombre, :edad, :sexo, :direccion, :codigo_postal, :english_level,
                                       :experiencia_laboral, :institucion_educativa, :ciudad, :estado, :email,
                                       :telefono, :celular, :especialidad, :grado_estudios, :sueldo_dec,
                                       :herramientas_usadas, :last_work_description, :personal_information,
                                       :last_work, :interests, :personal_goals, :title, :graduates,
                                       :current_work, :current_work_place, :current_work_post, :current_work_functions,
                                       personal_references_attributes: [:id, :name, :email, :phone, :time, :_destroy],
                                       idioms_attributes: [:id, :language, :percentage, :_destroy])
  end

  # Validando que el curriculum le pertenece al usuario, si no es así se
  # redireccionará al usuario a su perfil.
  def validate_user_curriculum
    if !current_recruit
      if current_user.id != @curriculum.user_id
        respond_to do |format|
          format.html { redirect_to root_path, notice: 'No tiene permitido entrar a esta vista.' }
        end
      end
    end
  end

  #Evitando que algun usuario común entre a la lista de curriculums
  def protect_curriculums_list
    if current_user || current_recruit
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'No tiene permitido entrar a esta vista.' }
      end
    end
  end
end
