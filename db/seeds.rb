puts "Cleaning database..."
puts "Cleaning artistes..."
Artiste.destroy_all
puts "Cleaning nouveautés..."
Nouveaute.destroy_all
puts "Datebase is clean :) "


puts "Time to create stuff..."

puts "Time to create artistes..."

file1 = URI.open("http://res.cloudinary.com/dqm9bn33k/image/upload/v1625131548/e1db90lhkohuxuuihuqd.png")
file2 = URI.open("https://res.cloudinary.com/dqm9bn33k/image/upload/v1631178116/dpjayuwshwip78tjoiui.jpg")
file3 = URI.open("https://res.cloudinary.com/dqm9bn33k/image/upload/v1631197921/newp2zurtufxeomqt4bp.jpg")

artiste1 = Artiste.create(name: "JOJI REDBACK", youtube_nouveaute1:"", youtube_nouveaute2: "", youtube_nouveaute3: "", youtube_nouveaute4:"", genre:"PRODUCTEUR & CHANTEUR", youtube_link:"https://www.youtube.com/watch?v=HV7WApTONDg&t=10s", description:"Joseph Grinda aka Jojiredback est un jeune rappeur d’origine française et australienne. C’est à travers ses textes et sa musique qu’il s’exprime et partage sa vision du monde. Ses nombreux voyages de la Chine au Canada lui ont permis de développer un style qui lui est bien propre", les_dessous:"Réécriture de l’entrevue", biography:"Joji Redback est un rappeur Franco/Australien basé à Montreal. Il fait de la musique depuis son plus jeune âge et à déjà sortis deux projets. Le mélange des langues et des styles musicaux peut être considères comme sa marque de fabrique. Il attire particulièrement l’attention du public après avoir sortis son single « Puerto », issu de son prochain EP « A Stranger Everywhere ». La chanson accumule de la visibilité après avoir été ajoutée à la playlist Spotify « Discover Weekly ». Puerto a maintenant plus de 150K écoutes sur Spotify et a été ajoutés dans plus de 3K playlistes d’utilisateurs . Son EP intitulé « A Stranger Everywhere », sortira le 19 Février 2021. Son EP s'intitule 'A Stranger Everywhere' et aborde different thèmes tels que l'isolement, l'addiction et un sentiment de non-appartenance de manière général.")
Artiste.last.photo.attach(io: file1, filename: 'booba.jpg', content_type: 'image/jpg')
User.last.save!

artiste2 = Artiste.create(name: "ISSA KARIM", 
youtube_nouveaute1:"", 
youtube_nouveaute2:"", 
youtube_nouveaute3:"", 
youtube_nouveaute4:"", 
genre:"PRODUCTEUR & CHANTEUR",
youtube_link:"https://www.youtube.com/watch?v=BFKfm5FWneo&t=5s",
description:"«J’adore Georges Brassens, j’aime les histoires dans la musique.»", 
les_dessous:"",
biography:"Musicien, chanteur, réalisateur et producteur de musique montréalais, Issa Karim dévoile de multiples facettes de sa personnalité à travers autant de médiums différents.
Des paroles enivrantes accompagnées de sonorités peu communes font de pair pour vous emmener dans son monde coloré. Issa nous propose de la musique tournée autour de ses sentiments, de ses ressentis et de sa vie accompagnée de visuels nous transportant sur un petit nuage.")

Artiste.last.photo.attach(io: file2, filename: 'Issa.ka.jpg', content_type: 'image/jpg')
User.last.save!

artiste3 = Artiste.create(name: "NICOLAS BERTRAND", 
youtube_nouveaute1:"", 
youtube_nouveaute2:"", 
youtube_nouveaute3:"", 
youtube_nouveaute4:"", 
genre:"ILLUSTRATEUR & ANIMATION",
youtube_link:"https://www.youtube.com/watch?v=BFKfm5FWneo&t=5s",
description:"«Je pense qu’un artiste est une personne qui veut transmettre des émotions via un médium choisi. Qu’importe le médium, c’est l’envie de transmettre des émotions. »", 
les_dessous:"",
biography:"Illustrateur et animateur français basé à Montréal, Nicolas Bertrand s’exprime sur différents médiums : toile, photographie, skateboard, murals, etc. Nicolas s'inspire de la musique et du mouvement créer par la danse. Au style graphique coloré, psychédélique et joyeux, Nicolas crée avec l'intention de faire vivre des expériences intéressantes et riches en émotions à ses spectateurs. Depuis 2018, il anime et développe des activités pédagogiques en animation image par image pour les jeunes à la Société des Arts Technologiques. Il a également participé au festival MURAL en 2017 et 2018.
")

Artiste.last.photo.attach(io: file3, filename: 'nicolas.stico.jpg', content_type: 'image/jpg')
User.last.save!


puts "Time to create nouveautés..."

nouveaute1 = Nouveaute.create(citation: "Je me sens chez moi dans trop d’endroits différents, mais en même temps j’ai l’impression d’être un étranger partout. ", artiste_id: artiste1.id)
nouveaute2 = Nouveaute.create(citation: "Depuis quelques semaines, je décris vraiment mon art comme un ramassis de couleursbet d’émotions", artiste_id: artiste2.id)
nouveaute3 = Nouveaute.create(citation: "On pense souvent qu’un artiste se fait seul, mais les grand public oublie souvent que derrière un artiste il peut y avoir 15 personnes", artiste_id: artiste3.id)


puts "Good job, seed is ready :)"
