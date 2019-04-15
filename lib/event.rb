class Event

	attr_accessor :title
	attr_accessor :start_date
	attr_accessor :duration
	attr_accessor :attendees


	def initialize(title, start_date, duration, attendees)
		@title = title
		@start_date = Time.parse(start_date)
		@duration = duration
		@attendees = attendees
	end

	def postpone_24h
		@start_date = @start_date *24*60*60
	end

	def end_date
		@end_date = @start_date + @duration
	end

	def is_past?
		@start_date < Time.now
	end

	def is_future?
		@start_date > Time.now
	end

	def is_soon?
		@start_date < Time.now + (30*60) && @start_date > Time.now
	end

	def to_s
		puts "Titre : #{@title}"
		puts "Date de début : #{@start_date}"
		puts "Durée : #{@duration} minutes"
		puts "Invités: #{@attendees.join(", ")}"
	end

end