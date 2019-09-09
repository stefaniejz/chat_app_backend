# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name:"Eric", avatar:"http://m.imeitou.com/uploads/allimg/2018051708/zjj3d2km140.jpg")
channel1 = Channel.create(name:"channel1")
message1 = Message.create(message_type:"text", content:"Hi, how are you?", user_id:1, channel_id:1)
userchannel1= Userchannel.create(user_id:1, channel_id:1)