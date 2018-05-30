# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

types = Type.create([{name: 'admin'},{name: 'cliente'}])

User.create([{f_name: 'Super', l_name: 'Admin', username: 'admin', password: 'admin', type: types.first}])
User.create([{f_name: 'John', l_name: 'Doe', username: 'jdoe', password: 'asdf', type: types.last}])
user = User.create([{f_name: 'Mario', l_name: 'Leon', username: 'mleon', password: '1234', type: types.last}])

Sickness.create([{name: 'Gripe'}, {name: 'Parasitos'}, {name: 'Artrosis'}, {name: 'Parvovirus'}])
Medicament.create([{name: 'Dragoxilo 220MG'}, {name: 'NAXPET 30MG'}, {name: 'ROSTRUM 30MG'}, {name: 'DOXIMICIN 100MG'}])
Vaccine.create([{name: 'Pentavalente'}, {name: 'Parvovirus'}, {name: 'Moquillo, Aden., Hep., Lepto.'}, {name: 'Rabia'}, {name: 'Coronavirus'}])

Pet.create([{name: 'MoonMoon'}])
