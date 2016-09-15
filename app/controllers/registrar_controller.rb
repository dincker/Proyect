class RegistrarController < ApplicationController

	def new
		@usuario = User.new()

	end

	def create
		@usuario = User.new(user_params)
		if @usuario.save
			flash[:success]="Bienvenido"
			redirect_to @usuario
		else
			render action: 'new'
		end
	end

	private
	def user_params
		params.require(:usuario).permit(:nombre,:apellido,:fono,:email,:direccion,:password,:password_confirmation)
		
	end

end
