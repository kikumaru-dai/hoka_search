class HotelsController < ApplicationController
    before_action :check_admin, only: [:new, :edit]
    
  def index
     @hotels = Hotel.all
  end

  def new
    @hotel = Hotel.new
  end
  
  def create
     @hotel = Hotel.new(hotel_params)
    if @hotel.save
      redirect_to root_path, flash: {notice: "投稿が完了しました。"}
    else
      render :new
    end
  end

  def edit
     @hotel = Hotel.find(params[:id])
  end
  
  def update
     @hotel = Hotel.find(params[:id])
     
     
     if @hotel.update(hotel_params)
        redirect_to root_path, flash: {notice: "更新が完了しました。"}
     else
        render :edit
     end
  end

  private
  
  def hotel_params
     params.require(:hotel).permit(:name,:image,:address,:describe,:title)
  end

  def check_admin
    unless current_user && current_user.is_admin?
      redirect_to root_path
    end
  end
end
