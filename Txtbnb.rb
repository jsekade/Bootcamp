#Iteration #0: Create an array of homes


class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
    
end

homes = [
Home.new("Casa de  Poli", "Arenas de Cabrales", 10, 35),
Home.new("Casa de Ana", "La Cabrera", 4, 60),
Home.new("Casa de Manuel", "Madrid", 7, 50),
Home.new("Casa de Alberto", "Manzanares", 4, 45),
Home.new("Casa de Luis", "Barcelona", 13, 37),
Home.new("Casa de Cristina", "Madrid", 6, 25),
Home.new("Casa de Piedad", "Sevilla", 2, 65),
Home.new("Casa de Juan", "Madrid", 8, 45),
Home.new("Casa de Marcos", "Cuenca", 6, 35),
Home.new("Casa de Lucia", "Avila", 4, 50)
]

#Iteration #2: Sorting
homes_sorted = homes.sort do |home1, home2|
  home1.price <=> home2.price
end

homes_sorted_descent = homes.sort do |home1, home2|
  home2.price <=> home1.price
end

homes_capacity = homes.sort do |home1, home2|
  home1.capacity <=> home2.capacity
end


#Iteration #1: List of homes
homes_sorted.each do |home|
  puts "#{home.name}, en #{home.city}"
  puts "Capacidad:#{home.capacity}, precio:#{home.price}€ por noche"
end

puts "¿Ordenar más caros primero (s/n)"
answer_1 = gets.chomp

if answer_1 == "s"
  homes_sorted_descent.each do |home|
   puts "#{home.name}, en #{home.city}"
   puts "Capacidad:#{home.capacity}, precio:#{home.price}€ por noche"
 end
else 
  homes_sorted.each do |home|
   puts "#{home.name}, en #{home.city}"
   puts "Capacidad:#{home.capacity}, precio:#{home.price}€ por noche"
 end
end

puts "¿Desea ordenar por capacidad (s/n?"
answer_2 = gets.chomp

if answer_2 == "s"
  homes_capacity.each do |home|
   puts "#{home.name}, en #{home.city}"
   puts "Capacidad:#{home.capacity}, precio:#{home.price}€ por noche"
 end
else 
  homes_sorted.each do |home|
   puts "#{home.name}, en #{home.city}"
   puts "Capacidad:#{home.capacity}, precio:#{home.price}€ por noche"
 end
end

#Iteration #3: Filter by city

puts "Escriba la ciudad por la que desea filtrar:"
 filter = gets.chomp

 city_filter = homes.select do |hm|
  hm.city == filter
end

city_filter.each do |home|
  puts "#{home.name}, en #{home.city}"
  puts "Capacidad:#{home.capacity}, precio:#{home.price}€ por noche"
end

#Iteration #4: Average
total_prices = homes.reduce(0) do |sum, prc|
  sum + prc.price
end
puts "El precio medio de las casas es: #{total_prices / 10}€"

#Iteration #5: Name your own price
puts "¿Cuanto desea pagar por su estancia?"
find_by_price = gets.chomp


 home_price = homes.find do |pr|
  pr.price == find_by_price.to_i
end
puts "Hemos encontrado esta casa por ese precio"
puts home_price.name

