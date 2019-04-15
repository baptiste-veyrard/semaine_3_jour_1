class EventCreator
	puts "Salut, tu veux créer un événement ? Cool !\n
	Commençons. Quel est le nom de l'événement ?"
	print ">"
	event_title = gets.chomp

	puts "Super. Quand aura-t-il lieu ?"
	print ">"
	event_start_date = gets.chomp

	puts "Au top. Combien de temps en minutes va-t-il durer (en minutes) ?"
	print ">"
	event_duration = gets.chomp
	event_duration = Time.parse(event_duration)

	puts "Génial. Qui va participer ? Balance leurs e-mails"
	print ">"
	new_array = []
	event_participants = gets.chomp.split(";")
		event_participants.each do |participant|
		 new_array << participant.strip
		end
event_1 = Event.new(event_title, event_start_date, event_duration, new_array)
end