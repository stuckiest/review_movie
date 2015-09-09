class SessionsController  < Devise::SessionsController

  protected

    def after_sign_in_path_for(resource)
      movies_path
    end

  private

    def sign_in_params
      params.require(:user).permit(:email, :password) 
    end

end