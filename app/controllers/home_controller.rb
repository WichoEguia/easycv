class HomeController < ApplicationController
  before_action :redirect_to_search_view, only: [:index]
  def index
    @curriculum = Curriculum.where(user_id: current_user.id)
  end

  def search

  end

  def diary
    @curriculums = Curriculum.all
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
