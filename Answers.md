Dalton Boll

Q0. The error is thrown because there is currently no model called “Pokemon” in the database.

Q1. The Pokemon are generated in the seeds.rb file. They are all starter Pokemon, and they are each generated with a random level using a random number generator between 1 and 20. Currently, one shows up on the index/home page because Pokemon are showed if their trainer=nil (they haven’t been caught yet), and only a sample of them is shown, thus providing a sample of the generated Pokemon in the seeds.rb file.

Q2a. This line of code creates the “Throw a Pokeball!” button which, when pressed, will call capture_path with the id of the Pokemon that was randomly generated that we are trying to capture. capture_path with go to the routes.rb file and will see a PATCH request and redirect to the PokemonsController (where the capture function is).

Q3. I would name my Charmander “AAAAAAAAAA” because that’s what my first Pokemon was named back when I had Pokemon Red for the GameBoy Color. I accidentally held down the “A” button when giving my Charmander a nickname because I didn’t know what I was doing!

Q4. I redirected to “redirect_to(trainer_path(id: @pokemon.trainer_id))”, which gives the trainer_path (/trainers) and the id of the current Pokemon’s trainer, which will redirect to /trainers/id, where id=id of the current Pokemon’s trainer. 

Q5. In the ’views/layouts/application.html.erb’, the 'layout/messages' is rendered. The contents of this can be seen in ‘/views/layouts/_messages.html.erb’. When an error occurs, the appropriate message is flashed because of the contents in this file. We pass ‘full_messages’, which is an array of the possible errors, and 'to_sentence’, which will convert the output to a nicely formatted sentence.

Feedback: I loved this project! Pokemon 4ever.

Link: https://github.com/daltonboll/proj1
