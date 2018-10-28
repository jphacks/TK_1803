# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:"ai", introduction: "はじめまして", email:"ai@email.com", password:"aiaaaa")
User.create!(name:"Yuta", introduction: "よろしくお願いいたします", email:"Yuta@email.com", password:"aiaaaa")
User.create!(name:"chika", introduction: "よろしく", email:"chika@email.com", password:"aiaaaa")
User.create!(name:"hiro", introduction: "はじめまして", email:"hiro@email.com", password:"aiaaaa")
User.create!(name:"kon", introduction: "はじめまして", email:"kon@email.com", password:"aiaaaa")
Video.create!(name: "アイネクライネ", user_id:1, instrument:"ピアノ", url:"https://www.youtube.com/watch?v=nuPf5qzwIJ0",score:"")
Video.create!(name: "Lemon", user_id:2, instrument:"フルート", url:"https://www.youtube.com/watch?v=hyrxsAkdXVQ",score:"")
Video.create!(name: "Another Day of Sun", user_id:2, instrument:"フルート", url:"https://www.youtube.com/watch?v=7z6zZwK7COI",score:"")
Video.create!(name: "アイネクライネ", user_id:2, instrument:"フルート", url:"https://www.youtube.com/watch?v=ER4Pg8Ozu3Y",score:"")
Video.create(name: "Lemon", user_id:3, instrument:"クラリネット", url:"https://www.youtube.com/watch?v=GhqCTpA7TG8",score:"")
Video.create(name: "Lemon", user_id:3, instrument:"クラリネット", url:"https://www.youtube.com/watch?v=GhqCTpA7TG8",score:"")
Video.create(name: "Lemon", user_id:3, instrument:"クラリネット", url:"https://www.youtube.com/watch?v=GhqCTpA7TG8", score:"")
Video.create(name: "Lemon", user_id:4, instrument:"ピアノ", url:"https://www.youtube.com/watch?v=juyCyR_QuKY",score:"")
Video.create(name: "高嶺の花子さん", user_id:5, instrument:"ベース", url:"https://www.youtube.com/watch?v=c_n3QNiFCCE",score:"")
Video.create(name: "高嶺の花子さん", user_id:5, instrument:"ベース", url:"https://www.youtube.com/watch?v=c_n3QNiFCCE",score:"")
Video.create(name: "瞬き", user_id:1, instrument:"ベース", url:"https://www.youtube.com/watch?v=5rql-AaygNU",score:"")
Video.create(name: "瞬き", user_id:1, instrument:"ベース", url:"https://www.youtube.com/watch?v=5rql-AaygNU",score:"")
