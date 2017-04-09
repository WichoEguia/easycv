class HomeController < ApplicationController
  before_action :redirect_to_search_view, only: [:index]
  def index

  end

  def search

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
