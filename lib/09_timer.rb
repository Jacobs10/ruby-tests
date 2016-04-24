class Timer
attr_accessor :seconds
def initialize
	@seconds = 0
end

def time_string
	time=""
	seconds=(@seconds%60)
	minutes=(@seconds/60)%60
	hrs=(@seconds/3600)

	time = "#{padded(hrs)}:#{padded(minutes)}:#{padded(seconds)}"
end

def padded(num)
	num.to_s.length > 1  ? num.to_s : "0" + num.to_s
end

end
