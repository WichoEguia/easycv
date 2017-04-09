module Accessible
  extend ActiveSupport::Concern

  protected

  def check_user
    flash.clear
    if current_user
      respond_to do |format|
        format.html { redirect_to root_path }
      end
    elsif current_recruit
      respond_to do |format|
        format.html { redirect_to root_path }
      end
    end
  end
end
