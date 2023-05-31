class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

  #新規登録時のストロングパラメータに「username, job, profile」カラムの追加
  def configure_permitted_parameters
      #新規登録時のストロングパラメータにカラムの追加
      devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :avatar, :is_admin])
      #編集時のストロングパラメータにカラムの追加
      devise_parameter_sanitizer.permit(:account_update, keys: [:user_name, :avatar, :is_admin])
  end
end
