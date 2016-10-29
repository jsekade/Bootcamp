class Lexiconomitron

	def eat_t words
	  text =	words.split("").select {|chr| chr != "t" && chr != "T"}
	  word = text.join("")
	end
	def shazam array
		words_reverse = array.each {|words| words.reverse!}
		words_eat = words_reverse.map {|word| eat_t word }
	end
	def oompa_loompa array
		words_size = array.select {|word| word.length <= 3}
	end

end
