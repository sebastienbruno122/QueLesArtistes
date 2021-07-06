puts "Cleaning database..."
puts "Cleaning artistes..."
Artiste.destroy_all
puts "Cleaning nouveautés..."
Nouveaute.destroy_all
puts "Datebase is clean :) "


puts "Time to create stuff..."

puts "Time to create artistes..."

file1 = URI.open("http://res.cloudinary.com/dqm9bn33k/image/upload/v1625131548/e1db90lhkohuxuuihuqd.png")
file2 = URI.open("https://img.nrj.fr/uv2BYyvWSCae0DQagdkQBIwFwjA=/https://image-api.nrj.fr/medias/2019/09/christophe-mae-presente-le-clip-de-les-gens_5d8a3e7b6c690.jpg")
file3 = URI.open("https://img.20mn.fr/utDn82yhQvSTlKbI1UU91Q/830x532_chanteuse-sia.jpg")
file4 = URI.open("https://www.objeko.com/wp-content/uploads/2021/06/madonna-62-ans-se-devoile-en-sous-vetements-la-star-a-trop-abuse-de-la-chirurgie-esthetique.jpg")
file5 = URI.open("https://media.vogue.fr/photos/5f23e65ba806c0ec57bc13e6/3:2/w_755,h_503,c_limit/thriller-758x758.jpg")
file6 = URI.open("https://images.sk-static.com/images/media/profile_images/artists/10010069/huge_avatar")

artiste1 = Artiste.create(name: "JOJI REDBACK", youtube_nouveaute1:"https://www.youtube.com/embed/ifjAfjkOyso", youtube_nouveaute2: "https://www.youtube.com/embed/sw50zdhjLXE", youtube_nouveaute3: "https://www.youtube.com/embed/lS7pUb5OSvw", youtube_nouveaute4:"", genre:"ARTISTE COMPOSITEUR/RAPPEUR", youtube_link:"https://www.youtube.com/watch?v=Cp9pk-FkE6E&ab_channel=B20baOfficiel", description:"Joseph Grinda aka Jojiredback est un jeune rappeur d’origine française et australienne. C’est à travers ses textes et sa musique qu’il s’exprime et partage sa vision du monde. Ses nombreux voyages de la Chine au Canada lui ont permis de développer un style qui lui est bien propre", les_dessous:"Réécriture de l’entrevue", biography:"Depuis la parution de son premier album Northwave en 2018, Mike Shabb est inarrêtable. Âgé de 22 ans, le rappeur ne s’est jamais assis sur ses lauriers, pas même après que VICE ait affirmé qu’il incarnait « l'avenir du rap québécois », au tout début de sa carrière. Pour Mike Shabb, la musique et le travail ardu restent la priorité - pas question de se laisser distraire par quoi que ce soit ...")
Artiste.last.photo.attach(io: file1, filename: 'booba.jpg', content_type: 'image/jpg')
User.last.save!


puts "Time to create nouveautés..."

nouveaute1 = Nouveaute.create(citation: "Beretta dans la bouche, tu vas me remettre", artiste_id: artiste1.id)
nouveaute2 = Nouveaute.create(citation: "Encore quelques millions et je ne saurais plus qui tu es", artiste_id: artiste1.id)
nouveaute3 = Nouveaute.create(citation: "I may cry, ruining my makeup. Wash away all the things you'​ve taken", artiste_id: artiste1.id)


puts "Good job, seed is ready :)"
