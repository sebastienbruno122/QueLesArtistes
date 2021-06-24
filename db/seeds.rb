# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning database..."
puts "Cleaning artistes..."
Artiste.destroy_all
puts "Cleaning nouveautés..."
Nouveaute.destroy_all
puts "Datebase is cleen :) "


puts "Time to create stuff"

artiste1 = Artiste.create(name: "Booba", genre:"Rap", biography:"Booba, de son vrai nom Élie Yaffa, né le 9 décembre 1976 à Boulogne-Billancourt, est un rappeur français. Il est le fondateur de 92i, collectif regroupant initialement des rappeurs issus des Hauts-de-Seine, tels Mala et Bram's ; il fut également membre du groupe de rap français Lunatic, avec son ancien acolyte Ali, au sein duquel ils se sont fait connaître au milieu des années 1990")
artiste2 = Artiste.create(name: "Christophe Maé", genre:"Pop", biography:"Passionné de tennis et de ski, il doit abandonner le sport à la suite d'une polyarthrite chronique, qui l'immobilise à l'âge de 16 ans1,2. C'est alors qu'il découvre la musique de Stevie Wonder, qui lui donne envie d'apprendre l'harmonica")
artiste3 = Artiste.create(name: "Sia", genre:"Pop", biography:"Sia Furler, dite Sia, née le 18 décembre 1975 à Adélaïde, est une auteure-compositrice-interprète, réalisatrice, scénariste et productrice australienne.")
artiste4 = Artiste.create(name: "Madonna", genre:"Pop", biography:"Madonna Louise Ciccone is an American singer, songwriter, and actress. Referred to as the 'Queen of por' she is regarded as one of the most significant figures in popular culture.")
artiste5 = Artiste.create(name: "Michael Jackson", genre:"Pop", biography:"Michael Joseph Jackson was an American singer, songwriter, and dancer. Dubbed the 'King of Pop', he is regarded as one of the most significant cultural figures of the 20th century.")
artiste6 = Artiste.create(name: "Heuss l'Enfoiré", genre:"Rap", biography:"Heuss l'Enfoiré, ou simplement Heuss, pseudonyme de Karim Djeriou né le 11 août 1992 à Gennevilliers, dans les Hauts-de-Seine, est un rappeur français.")