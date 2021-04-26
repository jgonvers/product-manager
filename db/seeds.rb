# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Maker.new(name:"Ziemenz").save!
Client.new(name:"George Abitbol").save!

Article.new(maker_reference:"XYZ",
            unit_buy_cost:100,
            description:"a widget",
            maker:Maker.first).save!

Article.new(maker_reference:"XYZ2",
            unit_buy_cost:100,
            description:"a better widget",
            maker:Maker.first,
            old_article:Article.first).save!