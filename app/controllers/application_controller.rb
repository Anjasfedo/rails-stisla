class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :set_login_time

  private

  def set_login_time
    session[:login_time] ||= Time.current if current_user
  end
end
