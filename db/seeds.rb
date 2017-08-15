puts "Cleaning seed"
User.destroy_all
Event.destroy_all
Participation.destroy_all

puts "Filling seed"

john = User.create({name: "john", sex:"homme"})
maria = User.create({name: "maria", sex:"femme"})
new_event = Event.create!({user: john, start_at: Time.now, description: "some good fun", address: 'paris', title:'sex night'})
participation_1 = Participation.new
participation_1.user = maria
participation_1.event = new_event
participation_1.save

puts "Seed complete"

