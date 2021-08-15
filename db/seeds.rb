puts "Cleaning database..."
puts "Cleaning artistes..."
Artiste.destroy_all
puts "Cleaning nouveautés..."
Nouveaute.destroy_all
puts "Datebase is clean :) "


puts "Time to create stuff..."

puts "Time to create artistes..."

file1 = URI.open("http://res.cloudinary.com/dqm9bn33k/image/upload/v1625131548/e1db90lhkohuxuuihuqd.png")
file2 = URI.open("http://res.cloudinary.com/dqm9bn33k/image/upload/v1625131548/e1db90lhkohuxuuihuqd.png")
file3 = URI.open("http://res.cloudinary.com/dqm9bn33k/image/upload/v1625131548/e1db90lhkohuxuuihuqd.png")

artiste1 = Artiste.create(name: "JOJI REDBACK", youtube_nouveaute1:"https://www.youtube.com/embed/ifjAfjkOyso", youtube_nouveaute2: "https://www.youtube.com/embed/sw50zdhjLXE", youtube_nouveaute3: "https://www.youtube.com/embed/lS7pUb5OSvw", youtube_nouveaute4:"", genre:"ARTISTE COMPOSITEUR/RAPPEUR", youtube_link:"https://www.youtube.com/watch?v=Cp9pk-FkE6E&ab_channel=B20baOfficiel", description:"Joseph Grinda aka Jojiredback est un jeune rappeur d’origine française et australienne. C’est à travers ses textes et sa musique qu’il s’exprime et partage sa vision du monde. Ses nombreux voyages de la Chine au Canada lui ont permis de développer un style qui lui est bien propre", les_dessous:"Réécriture de l’entrevue", biography:"Depuis la parution de son premier album Northwave en 2018, Mike Shabb est inarrêtable. Âgé de 22 ans, le rappeur ne s’est jamais assis sur ses lauriers, pas même après que VICE ait affirmé qu’il incarnait « l'avenir du rap québécois », au tout début de sa carrière. Pour Mike Shabb, la musique et le travail ardu restent la priorité - pas question de se laisser distraire par quoi que ce soit ...")
Artiste.last.photo.attach(io: file1, filename: 'booba.jpg', content_type: 'image/jpg')
User.last.save!

artiste2 = Artiste.create(name: "TEENADULTT", youtube_nouveaute1:"https://www.youtube.com/embed/ifjAfjkOyso", youtube_nouveaute2: "https://www.youtube.com/embed/sw50zdhjLXE", youtube_nouveaute3: "https://www.youtube.com/embed/lS7pUb5OSvw", youtube_nouveaute4:"", genre:"ARTISTE PEINTRE", youtube_link:"https://www.youtube.com/watch?v=Cp9pk-FkE6E&ab_channel=B20baOfficiel", description:"Joseph Grinda aka Jojiredback est un jeune rappeur d’origine française et australienne. C’est à travers ses textes et sa musique qu’il s’exprime et partage sa vision du monde. Ses nombreux voyages de la Chine au Canada lui ont permis de développer un style qui lui est bien propre", les_dessous:"Réécriture de l’entrevue", biography:"Depuis la parution de son premier album Northwave en 2018, Mike Shabb est inarrêtable. Âgé de 22 ans, le rappeur ne s’est jamais assis sur ses lauriers, pas même après que VICE ait affirmé qu’il incarnait « l'avenir du rap québécois », au tout début de sa carrière. Pour Mike Shabb, la musique et le travail ardu restent la priorité - pas question de se laisser distraire par quoi que ce soit ...")
Artiste.last.photo.attach(io: file2, filename: 'booba.jpg', content_type: 'image/jpg')
User.last.save!

artiste3 = Artiste.create(name: "TEENADULTT", youtube_nouveaute1:"https://www.youtube.com/embed/ifjAfjkOyso", youtube_nouveaute2: "https://www.youtube.com/embed/sw50zdhjLXE", youtube_nouveaute3: "https://www.youtube.com/embed/lS7pUb5OSvw", youtube_nouveaute4:"", genre:"ARTISTE PEINTRE", youtube_link:"https://www.youtube.com/watch?v=Cp9pk-FkE6E&ab_channel=B20baOfficiel", description:"Joseph Grinda aka Jojiredback est un jeune rappeur d’origine française et australienne. C’est à travers ses textes et sa musique qu’il s’exprime et partage sa vision du monde. Ses nombreux voyages de la Chine au Canada lui ont permis de développer un style qui lui est bien propre", les_dessous:"Réécriture de l’entrevue", biography:"Depuis la parution de son premier album Northwave en 2018, Mike Shabb est inarrêtable. Âgé de 22 ans, le rappeur ne s’est jamais assis sur ses lauriers, pas même après que VICE ait affirmé qu’il incarnait « l'avenir du rap québécois », au tout début de sa carrière. Pour Mike Shabb, la musique et le travail ardu restent la priorité - pas question de se laisser distraire par quoi que ce soit ...")
Artiste.last.photo.attach(io: file3, filename: 'booba.jpg', content_type: 'image/jpg')
User.last.save!


puts "Time to create nouveautés..."

nouveaute1 = Nouveaute.create(citation: "Beretta dans la bouche, tu vas me remettre", artiste_id: artiste1.id)
nouveaute2 = Nouveaute.create(citation: "Depuis quelques semaines, je décris vraiment mon art comme un ramassis de couleursbet d’émotions", artiste_id: artiste2.id)
nouveaute3 = Nouveaute.create(citation: "On pense souvent qu’un artiste se fait seul, mais les grand public oublie souvent que derrière un artiste il peut y avoir 15 personnes", artiste_id: artiste3.id)


puts "Good job, seed is ready :)"
