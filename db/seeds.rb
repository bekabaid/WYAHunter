# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed resources


    # Resource.create(location: 'Hunter West Cafeteria',
    #                  privilege: 2,
    #                  description:'The coffee machine is broken',
    #                  available: 0,
    #                  resource_type: 'coffee')
    #
    # Resource.create(location: 'North Building Library',
    #                                   privilege: 2,
    #                                   description:'There will be a faculty meeting in 2 hours.',
    #                                   available: 1,
    #                                   resource_type: 'rooms')
    #
    # Resource.create(location: 'Hunter North Lobby',
    #                  privilege: 2,
    #                  description:'New Espresso flavors or something lol idk coffee.',
    #                  available: 1,
    #                  resource_type: 'coffee')
    #
    # Resource.create(location: 'Hunter Library 3rd Floor',
    #                  privilege: 2,
    #                  description:'',
    #                  available: 0,
    #                  resource_type: 'whiteboards')
    #
    # Resource.create(location: 'Thomas Hunter Hall 3rd Floor',
    #                           privilege: 2,
    #                           description:'We only have Macs left',
    #                           available: 10,
    #                           resource_type: 'laptops')
    #
    # Resource.create(location: 'Hunter North J-Lab',
    #                                            privilege: 2,
    #                                            description:'Please keep it quiet, there is an exam going on in the next room.',
    #                                            available: 1,
    #                                            resource_type: 'rooms')
    #
    # Resource.create(location: 'Hunter Library 2nd Floor',
    #                           privilege: 2,
    #                           description:'The library is closing soon, so you can only get one for the next hour.',
    #                           available: 42,
    #                           resource_type: 'laptops')

User.create!(my_name: 'David', email: 'david@david.com',
            password:"super", privilege: -1)
