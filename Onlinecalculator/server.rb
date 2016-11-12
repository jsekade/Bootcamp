require "sinatra"
require "./lib/calculator"

get "/" do
  erb(:pez_calculator)
end

post "/calculate_add" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = Calculator.add(first,second)
  "#{first} + #{second} = #{result}"
end

post "/calculate_subtract" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = Calculator.subtract(first,second)
  "#{first} - #{second} = #{result}"
end

post "/calculate_multiply" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = Calculator.multiply(first,second)
  "#{first} * #{second} = #{result}"
end

post "/calculate_divide" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = Calculator.divide(first,second)
  "#{first} / #{second} = #{result}"
end
