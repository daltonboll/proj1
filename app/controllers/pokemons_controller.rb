class PokemonsController < ApplicationController

	# assign a Pokemon to a Trainer
	def capture
		@pokemon = Pokemon.find(params[:id])
	    @pokemon.update_attributes(:trainer_id => current_trainer.id)
	    @pokemon.save
	    redirect_to(root_path)
	end

	# reduce a Pokemon's health
	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health - 10

		if @pokemon.health <= 0
			@pokemon.delete
			redirect_to(:back)
			return
		end

		@pokemon.save
		redirect_to(trainer_path(id: @pokemon.trainer_id))

	end

end
