class ProgrammingLanguage
	attr_accessor :name, :age, :type
	def initialize (name, age, type)
		@name = name
		@age = age
		@type = type
	end

	def self.array_printer(array)
	  array.each do | language |
	    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
	  end
	end


end

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
go = ProgrammingLanguage.new("Go", 6, "Static")
rust = ProgrammingLanguage.new("Rust", 5, "Static")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]
# ProgrammingLanguage.array_printer(array_of_languages)
#
# aged_languages = array_of_languages.map do |language|
# 	language.age += 1
# 	language
# end
# puts "The programming languages aged one year are: "
# ProgrammingLanguage.array_printer(aged_languages)
#
# array_sort = array_of_languages.sort do |language1, language2|
#  	language2.age <=> language1.age
#  end
# ProgrammingLanguage.array_printer(array_sort)
#
# array_delete = array_of_languages.delete_at(6)
# ProgrammingLanguage.array_printer(array_of_languages)
# array_shuffle = array_of_languages.shuffle
# ProgrammingLanguage.array_printer(array_shuffle)
