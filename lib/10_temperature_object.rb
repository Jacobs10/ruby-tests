class Temperature
	def initialize(options={})
		if options.include?(:f)
			@celsiusdegrees = ((options[:f])-  32)* 5.0/9.0
		end
		if options.include?(:c)
			@celsiusdegrees = options[:c]
		end
	end

	def in_fahrenheit
	f=((@celsiusdegrees * 9.0)/5.0)+32
	end

	def in_celsius
		@celsiusdegrees
 	end

	def self.from_celsius(celsius)
		Temperature.new(:c => celsius)
	end

	def self.from_fahrenheit(fahrenheit)
		Temperature.new(:f => fahrenheit)
	end

end
class Celsius < Temperature

	def initialize(celsius)
		super(c: celsius)
	end

end

class Fahrenheit < Temperature

	def initialize(fahrenheit)
		super(f: fahrenheit)
	end

end
