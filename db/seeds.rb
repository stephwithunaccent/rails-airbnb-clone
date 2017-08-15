puts "Cleaning seed"
User.destroy_all
Event.destroy_all

puts "generating seed"
john = User.create({email: "john@gmail.com", password: "123soleil", name: 'John', sex: 'Male & Male'})
karina = User.create({email: "karina@gmail.com", password: "123soleil", name: 'Karina', sex: 'Male & Female'})
pia = User.create({email: "pia@gmail.com", password: "123soleil", name: 'Pia', sex: 'Female & Female'})
leo = User.create({email: "leo@gmail.com", password: "123soleil", name: 'Leo', sex: 'Male & Female'})



jojo = Event.create!({title: 'Young couple up for fun', address: '9 rue de Rivoli, 75001 Paris', description: 'International young couple up for some new encounters.', start_at: Time.now, user_id: john.id })
baller = Event.create({title: 'A night to remember', address: '16 rue des Blabla, 75001 Paris', description: 'International young couple up for some new encounters.', start_at: Time.now, user_id: karina.id})
thursdayfun = Event.create({title: 'A change in the week', address: '9 rue des Expositions, 75007 Paris', description: 'International young couple up for some new encounters.', start_at: Time.now, user_id: pia.id})
park = Event.create({title: 'A change in the week', address: '9 rue des Expositions, 75007 Paris', description: 'International young couple up for some new encounters.', start_at: Time.now, user_id: leo.id})
doggy = Event.create({title: 'A change in the week', address: '9 rue des Expositions, 75007 Paris', description: 'International young couple up for some new encounters.', start_at: Time.now, user_id: john.id})
kitty = Event.create({title: 'A change in the week', address: '9 rue des Expositions, 75007 Paris', description: 'International young couple up for some new encounters.', start_at: Time.now, user_id: leo.id})
rabit = Event.create({title: 'A change in the week', address: '9 rue des Expositions, 75007 Paris', description: 'International young couple up for some new encounters.', start_at: Time.now, user_id: pia.id})

puts "seed complete"
