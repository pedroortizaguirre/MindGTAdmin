class ApplicationController < ActionController::Base
  layout :layout_by_resource

#protect_from_forgery with: :exception
#before_action :authenticate_user!
  protected

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
end


# #Original
#class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  #For APIs, you may want to use :null_session instead.
#protect_from_forgery with: :exception
#before_action :authenticate_user!
#end