puts "Cleaning database..."
puts "Cleaning artistes..."
Artiste.destroy_all
puts "Cleaning nouveautés..."
Nouveaute.destroy_all
puts "Datebase is clean :) "


puts "Time to create stuff..."

puts "Time to create artistes..."

file1 = URI.open("https://cdn.radiofrance.fr/s3/cruiser-production/2020/11/50a43a42-2380-4d5d-8e2c-e9b8f382d416/1200x680_booba_01072020_miami_gqfrance_paridukovic_0303.jpg")
file2 = URI.open("https://img.nrj.fr/uv2BYyvWSCae0DQagdkQBIwFwjA=/https://image-api.nrj.fr/medias/2019/09/christophe-mae-presente-le-clip-de-les-gens_5d8a3e7b6c690.jpg")
file3 = URI.open("https://img.20mn.fr/utDn82yhQvSTlKbI1UU91Q/830x532_chanteuse-sia.jpg")
file4 = URI.open("https://www.objeko.com/wp-content/uploads/2021/06/madonna-62-ans-se-devoile-en-sous-vetements-la-star-a-trop-abuse-de-la-chirurgie-esthetique.jpg")
file5 = URI.open("https://media.vogue.fr/photos/5f23e65ba806c0ec57bc13e6/3:2/w_755,h_503,c_limit/thriller-758x758.jpg")
file6 = URI.open("https://images.sk-static.com/images/media/profile_images/artists/10010069/huge_avatar")

artiste1 = Artiste.create(name: "Booba", genre:"Rap", biography:"Booba, de son vrai nom Élie Yaffa, né le 9 décembre 1976 à Boulogne-Billancourt, est un rappeur français. Il est le fondateur de 92i, collectif regroupant initialement des rappeurs issus des Hauts-de-Seine, tels Mala et Bram's ; il fut également membre du groupe de rap français Lunatic, avec son ancien acolyte Ali, au sein duquel ils se sont fait connaître au milieu des années 1990")
Artiste.last.photo.attach(io: file1, filename: 'booba.jpg', content_type: 'image/jpg')
User.last.save!
artiste2 = Artiste.create(name: "Christophe Maé", genre:"Pop", biography:"Passionné de tennis et de ski, il doit abandonner le sport à la suite d'une polyarthrite chronique, qui l'immobilise à l'âge de 16 ans1,2. C'est alors qu'il découvre la musique de Stevie Wonder, qui lui donne envie d'apprendre l'harmonica")
Artiste.last.photo.attach(io: file2, filename: 'christophe.jpg', content_type: 'image/jpg')
User.last.save!
artiste3 = Artiste.create(name: "Sia", genre:"Pop", biography:"Sia Furler, dite Sia, née le 18 décembre 1975 à Adélaïde, est une auteure-compositrice-interprète, réalisatrice, scénariste et productrice australienne.")
Artiste.last.photo.attach(io: file3, filename: 'sia.jpg', content_type: 'image/jpg')
User.last.save!
artiste4 = Artiste.create(name: "Madonna", genre:"Pop", biography:"Madonna Louise Ciccone is an American singer, songwriter, and actress. Referred to as the 'Queen of por' she is regarded as one of the most significant figures in popular culture.")
Artiste.last.photo.attach(io: file4, filename: 'madonna.jpg', content_type: 'image/jpg')
User.last.save!
artiste5 = Artiste.create(name: "Michael Jackson", genre:"Pop", biography:"Michael Joseph Jackson was an American singer, songwriter, and dancer. Dubbed the 'King of Pop', he is regarded as one of the most significant cultural figures of the 20th century.")
Artiste.last.photo.attach(io: file5, filename: 'michael.jpg', content_type: 'image/jpg')
User.last.save!
artiste6 = Artiste.create(name: "Heuss l'Enfoiré", genre:"Rap", biography:"Heuss l'Enfoiré, ou simplement Heuss, pseudonyme de Karim Djeriou né le 11 août 1992 à Gennevilliers, dans les Hauts-de-Seine, est un rappeur français.")
Artiste.last.photo.attach(io: file6, filename: 'heuss.jpg', content_type: 'image/jpg')
User.last.save!


puts "Time to create nouveautés..."

nouveaute1 = Nouveaute.create(citation: "Beretta dans la bouche, tu vas me remettre", artiste_id: artiste1.id)
nouveaute2 = Nouveaute.create(citation: "Encore quelques millions et je ne saurais plus qui tu es", artiste_id: artiste1.id)
nouveaute3 = Nouveaute.create(citation: "I may cry, ruining my makeup. Wash away all the things you'​ve taken", artiste_id: artiste3.id)
nouveaute4 = Nouveaute.create(citation: "Poor is the man whose pleasures depend on the permission of another.", artiste_id: artiste4.id)
nouveaute5 = Nouveaute.create(citation: "If you wanna make the world a better place, take a look at yourself, then make that change.", artiste_id: artiste5.id)
nouveaute6 = Nouveaute.create(citation: "Tu me dis que tu es mon frère au parloir je voyais que ma mère", artiste_id: artiste6.id)
nouveaute7 = Nouveaute.create(citation: "Mais elle est où la mulaga", artiste_id: 6)
nouveaute8 = Nouveaute.create(citation: "Belle Demoiselle qui se presse dans l'allée", artiste_id: artiste2.id)


puts "Good job, seed is ready :)"