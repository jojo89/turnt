# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    

   
  user=User.create(password: "password",password_confirmation:"password", username: "Bigjoe", email: "burtoftallbiz@gmail.com")
    
     

  g1=Game.create(name:Faker::Company.name, winner_id:nil, stock: 1,commodity:1,real_estate:1,bonds:1,bonds:1,started:true)
  g2=Game.create(name:Faker::Company.name, winner_id:user.id, stock: 1,commodity:1,real_estate:1,bonds:1,bonds:1,started:true)
  g3=Game.create(name:Faker::Company.name, winner_id:nil, stock: 1,commodity:1,real_estate:1,bonds:1,bonds:1,started:false)
  g4=Game.create(name:Faker::Company.name, winner_id:nil, stock: 1,commodity:1,real_estate:1,bonds:1,bonds:1,started:true)


  Score.create(user_id:1,game_id:g1.id,accepted:true)
  Score.create(user_id:1,game_id:g2.id,accepted:true)
  Score.create(user_id:1,game_id:g3.id,accepted:false)
  Score.create(user_id:1,game_id:g4.id,accepted:true)