puts "Cleaning seed"
User.destroy_all
Event.destroy_all
Participation.destroy_all

puts "Filling seed"

puts "generating seed"

url = "http://res.cloudinary.com/dbojzvt5e/image/upload/v1503048975/IMG_0494_pbrwzr.jpg"
jerome = User.create({email: "jerome@gmail.com", password: "123soleil", name: 'Jerome & Arnaud', sex: '⚣ Gay'})
jerome.photo_url = url

url = "http://res.cloudinary.com/dbojzvt5e/image/upload/v1502981985/pxznnrtevxlxukxk1vlk.jpg"
lea = User.create({email: "lea@gmail.com", password: "123soleil", name: 'Lea & Mathieu', sex: '⚤ Straight'})
lea.photo_url = url

url = "http://res.cloudinary.com/dbojzvt5e/image/upload/v1503048976/abo-ngalonkulu-68397_mmqsup.jpg"
camille = User.create({email: "camille@gmail.com", password: "123soleil", name: 'Camille & Salomé', sex: '⚢ Lesbian'})
camille.photo_url = url

leo = User.create({email: "leo@gmail.com", password: "123soleil", name: 'Kim & Leo', sex: '⚤ Straight'})

event1 = Event.create({user: leo, start_at: "2018-05-15 15:37:33 +0200", description: "Un peu de plaisir n'a jamais tué personne... Jeu de main jeu de vilain...", address: 'Paris, 6 rue des Abesses', title:'Les Jambes Attachées'})
participation_1 = Participation.new
participation_1.user = lea
participation_1.event = event1
participation_1.rating = 7
participation_1.review = "Very nice night in a very nice place. They are both very hot!"
participation_1.save

participation_bis = Participation.new
participation_bis.user = jerome
participation_bis.event = event1
participation_bis.rating = 9
participation_bis.review = "Oh...my...god... Fabulous couple, fabulous night, fabulous sex."

event2 = Event.create({user: leo, start_at: "2018-06-15 15:37:33 +0200", description: "Hey, we love sex and violence. We are welcoming free lancers of pur pleasure", address: 'Londres, picadilly circus', title:'Fucking & Punshing'})
participation_2 = Participation.new
participation_2.user = jerome
participation_2.event = event2
participation_1.rating = 7
participation_1.review = "Amazing night!! 😍 I am looking for the next time!"
participation_2.save

event3 = Event.create({user: jerome, start_at: "2016-07-15 15:37:33 +0200", description: "Hey, we love sex and violence. We are welcoming free lancers of pur pleasure", address: 'Londres', title:'Fucking & Punshing'})
participation_3 = Participation.new
participation_3.user = leo
participation_3.event = event3
participation_3.save

event4 = Event.create({user: lea, start_at: "2017-09-15 15:37:33 +0200", description: "Hey, we love sex and violence. We are welcoming free lancers of pur pleasure", address: 'Paris, 17 boulevard des batignolles', title:'Fucking & Punshing'})
participation_4 = Participation.new
participation_4.user = leo
participation_4.event = event4
participation_4.save


puts "Seed complete"

