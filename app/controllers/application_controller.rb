class ApplicationController < ActionController::Base
  
before_action :configure_permitted_parameters, if: :devise_controller?

  #after_sign_in_path_forはDeviseが用意しているメソッドで、サインイン後にどこに遷移するかを設定しているメソッド
  #Aboutページへ遷移するように設定
  def after_sign_in_path_for(resource)
    about_path
  end
  
  #after_sign_out_path_forはDeviseが用意しているメソッドでサインアウト後にどこに遷移するかを設定するメソッド
  #Aboutページへ遷移するように設定
  def after_sign_out_path_for(resource)
    about_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
