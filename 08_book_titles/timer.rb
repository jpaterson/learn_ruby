class Timer
	attr_accessor :seconds
	def initialize(seconds=0)
		@seconds = seconds
	end
	def time_string
		if @seconds.between?(0,9)
			"00:00:0" << "#{@seconds}"
		# @seconds.between?(10,60)
		elsif @seconds.between?(10,59)
			"00:00:" << "#{seconds}"
		elsif @seconds.between?(60,3600)
			
		end
	end
end

class Timer
	attr_accessor :seconds

	def initialize (seconds=0)
		@seconds = seconds
	end

	def time_formatter(seconds)
		timearray = [hours, mins, secs]
		hours << (@seconds/(60*60)) % 24
		mins << (@seconds/60) % 60
		secs << @seconds % 60
	end

end
@timer = Timer.new
@timer.time_formatter(4000)
