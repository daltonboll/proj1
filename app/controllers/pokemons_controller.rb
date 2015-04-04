class PokemonsController < ApplicationController

	# assign a Pokemon to a Trainer
	def capture
		@pokemon = Pokemon.find(params[:id])
	    pokemon_id = @pokemon.id
	    @pokemon.update_attributes(:trainer_id => current_trainer.id)
	    @pokemon.save
	    redirect_to(root_path)
	end
end
