class LoginController < ApplicationController
  
# "Cria" um login, ou seja, "loga o usuário" 
def create 
  if user = Cliente.authenticate(params[:username], params[:password]) 
    # Registra o ID do usuário na sessão para que possa ser recuperado durante outras requisições 
    session[:current_user_id] = user.id redirect_to root_url 
  end 
end 
end