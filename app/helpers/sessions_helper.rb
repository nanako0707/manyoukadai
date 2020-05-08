module SessionsHelper

  def current_user
    # @current_userが真の場合はそのままにし、偽の場合は右辺の値を代入する。
    # @current_user || @current_user = User.find_by(id: session[:user_id])
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    #値がオブジェクトに格納されている場合、真となる。
    current_user.present?
  end

end
