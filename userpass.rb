
class UserValidator
  @@user = "Jose"
  @@password = "12345"



  def self.validated_user
    puts "Introduzca nombre de usuario"
    username = gets.chomp
    puts "Contraseña"
    password = gets.chomp
    if @@user == username && @@password == password
      puts "Usuario validado \nIntroduzca texto"
      text_user = gets.chomp
      text_array = text_user.split(" ").count
      print text_array

    else
      puts "Usuario o contraseña incorrecta"
      UserValidator.validated_user
    end
  end


end

UserValidator.validated_user
