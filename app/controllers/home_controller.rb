class HomeController < ApplicationController
  before_action :redirect_to_search_view, only: [:index]
  def index
    @curriculum = Curriculum.where(user_id: current_user.id)
  end

  def search

  end

  def diary
    @curriculums = Curriculum.where(recruit_id: current_recruit.id)
  end

  def new_recruit

  end

  def create_recruit
    @recruit = Recruit.new(name: params[:name], lastname: params[:lastname], email: params[:email], phone: params[:phone], is_admin: false, password: params[:password], password_confirmation: params[:password])
    @recruit.save
    @recruit.key = "#{@recruit.id}#{@recruit.name[0].upcase}#{@recruit.lastname[0].upcase}EASYCV"
    if @recruit.save
      redirect_to new_recruit_path
    end
  end

  def recruit_list
    @recruits = Recruit.where(is_admin: false)
  end

  protected

  def redirect_to_search_view
    if current_recruit
      respond_to do |format|
        format.html {
          redirect_to recruits_root_path
        }
      end
    end
  end
end
