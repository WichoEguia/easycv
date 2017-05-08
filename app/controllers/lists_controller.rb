class ListsController < ApplicationController

  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)
    redirect_to @list
  end

  def show
    @list = List.find(params[:id])
  end

  protected

  def list_params
    params.require(:list).permit(:min_age,:max_age,:state,:speciality,:grade,:sex,:language,:percentage)
  end

end
