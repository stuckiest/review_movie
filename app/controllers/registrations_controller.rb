class RegistrationsController < Devise::RegistrationsController
    protected
      def after_sign_up_path_for(resource)
        movies_path
      end
      


  private

    def sign_up_params

      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
     
    end
    
  end