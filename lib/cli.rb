class Cli

	attr_accessor :scraper

	def initialize
		self.scraper = Scraper.new(self)
	end

	def welcome
		puts "Welcome to Stocks."
	end

	def ticker_symbol_prompt
		valid = false
		while !valid do
			print "Please enter a ticker symbol: "
			symbol = gets.strip
			valid = self.scraper.load_gfs(symbol)
			puts "Invalid ticker symbol." if !valid
		end
	end

end
