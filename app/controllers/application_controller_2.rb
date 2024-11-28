class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_layout

  private

  def set_layout
    if ['small', 'wide'].include? params['layout']
      cookies.permanent['layout'] = params['layout']
    end

    @layout = cookies['layout']
  end
end
