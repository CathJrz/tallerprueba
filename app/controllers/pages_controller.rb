class PagesController < ApplicationController
# Para que no nos haga la validación de si viene o no viene el token:
# No se recomienda hacerlo, es mejor usar el tag:
# <%= csrf_meta_tags%>
skip_before_action :verify_authenticity_token

  def x
  end

  def save_user
    User.new(name: params[:name], email: params[:email], age: params[:age]).save
    # O puede ser guardar la info en una variable y luego variable.save
    redirect_to pages_x_path, notice:"Tu usuario se ha creado."
  end
end
