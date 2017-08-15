puts "Cleaning seed"
User.destroy_all
Event.destroy_all
Participation.destroy_all

puts "Filling seed"

puts "generating seed"
john = User.create({email: "john@gmail.com", password: "123soleil", name: 'John', sex: 'Male & Male'})
karina = User.create({email: "karina@gmail.com", password: "123soleil", name: 'Karina', sex: 'Male & Female'})
pia = User.create({email: "pia@gmail.com", password: "123soleil", name: 'Pia', sex: 'Female & Female'})
leo = User.create({email: "leo@gmail.com", password: "123soleil", name: 'Leo', sex: 'Male & Female'})

new_event = Event.create!({user: john, start_at: "2016-08-15 15:37:33 +0200", description: "some good fun", address: 'paris', title:'sex night'})
participation_1 = Participation.new
participation_1.user = karina
participation_1.event = new_event
participation_1.save

puts "Seed complete"

