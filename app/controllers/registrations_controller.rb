class RegistrationsController < Devise::RegistrationsController
  
  #def create
    #User.create(sign_up_params)
  #end
  
  def sign_up_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
  end
  
end