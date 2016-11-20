# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
user = User.create(email: 'test@test.com', password: 'password', name: 'Test User')
bar = Bar.create(name: 'Little Bar', longitude: -85, latitude: 38 )
date = DateTime.new(2017,5,7,4,20,00) # year, month, day, hour, minute, second
crawl = Crawl.create(name: 'First Crawl', user_id: user.id, date:date)
