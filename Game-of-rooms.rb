class Game
   def initialize
       @rooms = []

   end
   def add_rooms(room)
       @rooms << room
   end
   def show_room
       puts "#{@rooms[@current_room].description}"
   end
   def ask_user
       puts "¿Hacia donde desea ir?\n>"
       @user_response = gets.chomp
       @user_response.downcase
   end
   def evaluate_user user_response
       if @rooms[@current_room].exit == @user_response
           @current_room += 1
       else
            puts "Esa no es la salida\n>"
       end
   end


   def start_game
       @current_room = 0

       until @current_room == @rooms.size && @user_response == "n"

           show_room
           user_response = ask_user
           evaluate_user user_response
           
       end
       puts "¡¡¡¡ENHORABUENA!!!"
   end
end

class Room
   attr_reader :description, :exit
   def initialize(description, exit)
       @description = description
       @exit = exit
   end
end


room1 = Room.new("Estas en una habitación oscura, tienes cuatro puertas.", "e")
room2 = Room.new("Has llegado a una sala con chimenea, tienes cuatro puertas", "s")
room3 = Room.new("Has encontrado  la cocina, tienes cuatro puertas", "s")
room4 = Room.new("Estas en el jardin.", "w")
room5 = Room.new("Has llegado a la ultima habitacion.", "n")
game = Game.new

game.add_rooms room1
game.add_rooms room2
game.add_rooms room3
game.add_rooms room4
game.add_rooms room5

game.start_game