require 'faker'
puts "creating 30 clients"

30.times do
  Client.new(name: Faker::Name.unique.name).save!
  puts "."
end

puts "creating 14 makers"
14.times do
  Maker.new(name: Faker::Appliance.unique.brand).save!
  puts "."
end

puts "create 10 obsolete articles"
clients = Client.all
makers = Maker.all
10.times do
  Article.new(maker_reference: Faker::Alphanumeric.unique.alphanumeric(number: 10, min_alpha: 3, min_numeric: 3),
              unit_buy_cost:(85..400).to_a.sample,
              description: Faker::Appliance.equipment,
              maker: makers.sample,
              obsolete: true).save!
  puts "."
end

puts "create 50 non obsolete articles"
50.times do
  Article.new(maker_reference: Faker::Alphanumeric.unique.alphanumeric(number: 10, min_alpha: 3, min_numeric: 3),
              unit_buy_cost:(85..400).to_a.sample,
              description: Faker::Appliance.equipment,
              maker: makers.sample,
              obsolete: false).save!
  puts "."
end

puts "create replacement for obsolete articles"

Article.where(obsolete: true).each do |art|
  Article.new(maker_reference: Faker::Alphanumeric.unique.alphanumeric(number: 10, min_alpha: 3, min_numeric: 3),
              unit_buy_cost:(85..400).to_a.sample,
              description: art.description,
              maker: art.maker,
              obsolete: false,
              old_article: art).save!
  puts "."
end

puts "create 3 client_articles for each non obsolete articles"
n = 10234
3.times do
  articles = Article.where(obsolete: false).shuffle
  articles.each do |art|
    ClientArticle.new(
      article_code: n.to_s,
      article: art,
      unit_sell_cost: art.unit_buy_cost*2,
      validity: Time.now + (-60..60).to_a.sample*60*60*24,
      client: clients.sample
    ).save!
  n += 1
  puts "."
  end
end