uts "Cleaning database..."
puts "Cleaning artistes..."
Vote.destroy_all
Proposition.destroy_all
puts "Cleaning nouveautés..."


artiste1 = Artiste.create(email: "richad@friendstrip.com", password:"123456", first_name:"Richad")