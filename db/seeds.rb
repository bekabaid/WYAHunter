# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed resources
LaptopsTable.create(room: 'Hunter Library 2nd Floor',
                    available: true,
                    quantity: 42,
                    description: 'The library is closing soon, so you can only get one for the next hour.',
                    privilege: 2)

LaptopsTable.create(room: 'Thomas Hunter Hall',
                    available: true,
                    quantity: 10,
                    description: 'We only have Macs available',
                    privilege: 3)

RoomsTable.create(room: 'Hunter North J-Lab',
                   available: true,
                   quantity: 0,
                   description: 'There will be a staff meeting going on at 3 p.m',
                   privilege: 4)

RoomsTable.create(room: 'Hunter North 16th Floor Library',
                   available: false,
                   quantity: 0,
                   description: 'Closed for cleaning',
                   privilege: 5)

WhiteboardsTable.create(room: 'Hunter Library 2nd Floor',
                    available: true,
                    quantity: 4,
                    description: '',
                    privilege: 6)

WhiteboardsTable.create(room: 'Hunter Library 3rd Floor',
                    available: false,
                    quantity: 0,
                    description: 'Boards are broken',
                    privilege: 7)

CoffeeTable.create(room: 'Hunter North USG',
                   available: true,
                   description: 'Espresso available!',
                   privilege: 8)

CoffeeTable.create(room: 'Cafeteria',
                   available: true,
                   description: 'Out of sugar',
                   privilege: 9)

Resource.create([{title: 'Coffee', path: 'coffee_tables'},          {title: 'Whiteboards', path: 'whiteboards_tables'},
    {title: 'Rooms', path: 'rooms_tables'},
    {title: 'Laptops', path: 'laptops_tables'}])

User.create(my_name: 'Bobby', email: 'hello@hello.com',
             password_digest:'password', privilege: 2)

User.create(my_name: 'Scott', email: 'hi@hi.com',
             password_digest: 'password', privilege: 3)

User.create(my_name: 'Logan', email: 'logan@logan.com',
             password_digest: 'password', privilege: 4)

User.create(my_name: 'Orroro', email: 'priv@priv.com',
             password_digest: 'password', privilege: 5)

User.create(my_name: 'Hank', email: 'for@for.com',
             password_digest: 'password', privilege: 6)

User.create(my_name: 'Jubilation', email: 'email@email.com',
             password_digest: 'password', privilege: 7)

User.create(my_name: 'Remmy', email: 'yes@yes.com',
             password_digest: 'password', privilege: 8)

User.create(my_name: 'Jean', email: 'no@no.com',
             password_digest: 'password', privilege: 9)
