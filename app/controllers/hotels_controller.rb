class HotelsController < ApplicationController
  before_action :deny_non_admin_users, only: [:new, :edit]
  before_action :set_q, only: [:index, :search]
    
  def index
     @hotels = Hotel.all
     @categories = Hotel.where.not(category: nil).pluck(:category).uniq
     @address = Hotel.where.not(address: nil).pluck(:address).uniq
  end

  def new
    @hotel = Hotel.new
  end
  
  def show
    @hotel = Hotel.find(params[:id])
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
  
  def search
    @results = @q.result
  end

  private
  
  def set_q
    @q = Hotel.ransack(params[:q])
  end
  
  def hotel_params
    params.require(:hotel).permit(:name,:image,:address,:describe,:title,:category)
  end

  def deny_non_admin_users
    unless current_user && current_user.is_admin?
      redirect_to root_path
    end
  end
end
