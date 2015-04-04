class PokemonsController < ApplicationController

	def new
	end

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

	def create
	  @pokemon = Pokemon.new(pokemon_params)
	  @pokemon.update_attributes(:trainer_id => current_trainer.id, :level => 1, :health => 100)

	  if @pokemon.save
	    redirect_to(trainer_path(id: current_trainer.id))
	  else
	    flash[:error] = @pokemon.errors.full_messages.to_sentence
	    redirect_to(trainer_path(id: current_trainer.id))
	  end
	end

	private 
	def pokemon_params
	  params.require(:pokemon).permit(:name)
	end

end
