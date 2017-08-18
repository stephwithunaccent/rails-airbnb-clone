puts "Cleaning seed"
User.destroy_all
Event.destroy_all
Participation.destroy_all

puts "Generating seed"

url = "http://res.cloudinary.com/dbojzvt5e/image/upload/v1503063064/arnaudetjeje_felvkn.png"
jerome = User.create({email: "jerome@gmail.com", password: "123soleil", name: 'Jerome & Arnaud', sex: '⚣ Gay'})
jerome.photo_url = url

url = "http://res.cloudinary.com/dbojzvt5e/image/upload/v1503063063/lea-romain_xxqc9u.png"
lea = User.create({email: "lea@gmail.com", password: "123soleil", name: 'Lea & Mathieu', sex: '⚤ Straight'})
lea.photo_url = url

url = "http://res.cloudinary.com/dbojzvt5e/image/upload/v1503064102/172f03bd9ed338a4e9dba4e092ca1e3d_teyrgv.png"
camille = User.create({email: "camille@gmail.com", password: "123soleil", name: 'Natalie & Scarlett', sex: '⚢ Lesbian'})
camille.photo_url = url

url = "http://res.cloudinary.com/dbojzvt5e/image/upload/v1503063062/couple-macron_icwo6r.png"
emmanuel = User.create({email: "emmanuel@gmail.com", password: "123soleil", name: 'Emmanuel & Brigitte', sex: '⚤ Straight'})
emmanuel.photo_url = url

leo = User.create({email: "leo@gmail.com", password: "123soleil", name: 'Kim & Leo', sex: '⚤ Straight'})

url = "http://res.cloudinary.com/dbojzvt5e/image/upload/v1503058354/Eyes-Wide-Shut-347_zi56sz.jpg"
event1 = Event.create({user: jerome, start_at: "2018-05-15 15:37:33 +0200", description: "Un peu de plaisir n'a jamais tué personne... Jeu de main jeu de vilain...", address: 'Paris, 6 rue des Abesses', title:'Les Jambes Attachées'})
participation_1 = Participation.new
participation_1.user = lea
participation_1.event = event1
participation_1.rating = 7
participation_1.review = "Very nice night in a very nice place. They are both very hot!"
participation_1.save
event1.photo_url = url

participation_bis = Participation.new
participation_bis.user = jerome
participation_bis.event = event1
participation_bis.rating = 9
participation_bis.review = "Oh...my...god... Fabulous couple, fabulous night, fabulous sex."

url = "http://res.cloudinary.com/dbojzvt5e/image/upload/v1503058353/Eyes-Wide-Shut-Tom-Cruise-with-the-twins_retqpg.jpg"
event2 = Event.create({user: lea, start_at: "2018-06-15 15:37:33 +0200", description: "Hey, we love sex and violence. We are welcoming free lancers of pur pleasure", address: 'Paris, rue du faubourg saint-honoré', title:'Fucking & Punshing'})
participation_2 = Participation.new
participation_2.user = jerome
participation_2.event = event2
participation_1.rating = 7
participation_1.review = "Amazing night!! 😍 I am looking for the next time!"
participation_2.save
event2.photo_url = url

url = "http://res.cloudinary.com/dbojzvt5e/image/upload/v1503058353/o-FIFTY-SHADES-OF-GREY-facebook_h05b91.jpg"
event3 = Event.create({user: jerome, start_at: "2016-07-15 15:37:33 +0200", description: "Hey, we love sex and violence. We are welcoming free lancers of pur pleasure", address: 'Paris, rue de rome', title:'Domination & Candles'})
participation_3 = Participation.new
participation_3.user = leo
participation_3.event = event3
participation_3.save
event3.photo_url = url

url = "http://res.cloudinary.com/dbojzvt5e/image/upload/v1503059397/eyes8_kfc50i.png"
event4 = Event.create({user: lea, start_at: "2017-09-15 15:37:33 +0200", description: "Hey, we love sex and violence. We are welcoming free lancers of pur pleasure", address: 'Paris, 17 boulevard des batignolles', title:'Doggy Style Orgie'})
participation_4 = Participation.new
participation_4.user = leo
participation_4.event = event4
participation_4.save
event4.photo_url = url

url = "http://res.cloudinary.com/dbojzvt5e/image/upload/c_scale,w_640/v1503059049/20120329_184047_bureau-du-president-de-gaul_n2h3zv.jpg"
event5 = Event.create({user: emmanuel, start_at: "2017-09-15 15:37:33 +0200", description: "Enter a world of power.", address: "Paris, palais de l'Elysée", title:'Politics & Fuck'})
participation_5 = Participation.new
participation_5.user = leo
participation_5.event = event5
participation_5.save
event5.photo_url = url

url = "http://res.cloudinary.com/dbojzvt5e/image/upload/v1503060396/7_z32e7c.jpg"
event7 = Event.create({user: leo, start_at: "2017-09-15 15:37:33 +0200", description: "Champagne et sex, the French way", address: "Paris, les invalides", title:'Champagne et sex'})
participation_7 = Participation.new
participation_7.user = lea
participation_7.event = event7
participation_7.rating = 9
participation_7.review = "Amazing night!! 😍 I am looking for the next time!"
participation_7.save
event7.photo_url = url

url = "http://res.cloudinary.com/dbojzvt5e/image/upload/v1503059983/Into-The-Wild-kristen-stewart-14695932-500-208_uahtgs.jpg"
event6 = Event.create({user: leo, start_at: "2017-09-15 15:37:33 +0200", description: "Folkoric and tender night in oiur sweet camping car", address: "Paris, porte de champeret", title:'Folkloric sex'})
participation_6 = Participation.new
participation_6.user = camille
participation_6.event = event6
participation_6.rating = 8
participation_6.review = "Very nice night in a very nice place. They are both very hot!"
participation_6.save
event6.photo_url = url



puts "Seed complete"

