# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name:"Eric", avatar:'http://image.bee-ji.com/233220')
user2 = User.create(name:"Zenjo", avatar:'https://www.ruan8.com/uploadimg/image/20190801/20190801162208_25373.jpg')
user3 = User.create(name:"Jack", avatar:"https://www.qq745.com/uploads/allimg/170714/22-1FG4101U5E0.png")
user4 = User.create(name:"Brian",  avatar:"http://img.zz21.com/2015/0427/20150427110202176.jpg")
user5 = User.create(name:"Ziyuan",  avatar:"http://m.imeitou.com/uploads/allimg/2018051708/zjj3d2km140.jpg")
user6 = User.create(name:"Grace", avatar:"http://n.sinaimg.cn/sinacn10112/513/w686h627/20190606/de67-hxyuaph9525998.jpg")
user7 = User.create(name:"Stephanie", avatar:"https://pic.qqtn.com/up/2018-3/15222315731259519.jpg")

channel1 = Channel.create(name:"channel1", channel_type: "group")
channel2 = Channel.create(name:"channel2", channel_type: "group")
channel3 = Channel.create(name:"channel3", channel_type: "direct")
channel4 = Channel.create(name:"channel5", channel_type: "direct")

# message1 = Message.create(message_type:"text", content:"Hi, how are you?", user_id:1, channel_id:1)
# message1 = Message.create(message_type:"text", content:"Good", user_id:2, channel_id:1)

# channel1
message1 = Message.create(message_type:"text", content:"Anyone wants to play board game tonight?", user_id:4, channel_id:1)
message2 = Message.create(message_type:"text", content:"What game?", user_id:1, channel_id:1)
message3 = Message.create(message_type:"text", content:"Dracula", user_id:4, channel_id:1)
message4 = Message.create(message_type:"text", content:"What time?", user_id:6, channel_id:1)
message5 = Message.create(message_type:"text", content:"8 PM", user_id:4, channel_id:1)
message6 = Message.create(message_type:"text", content:"I'll join in", user_id:7, channel_id:1)
message7 = Message.create(message_type:"text", content:"Ok", user_id:2, channel_id:1)

# channel2
message8 = Message.create(message_type:"text", content:"What for lunch?", user_id:2, channel_id:2)
message9 = Message.create(message_type:"text", content:"Pasta", user_id:1, channel_id:2)
message10 = Message.create(message_type:"text", content:"Let's go!", user_id:2, channel_id:2)

#direct3

message11 = Message.create(message_type:"text", content:"Hi Grace, how are you?", user_id:1, channel_id:3)
message12 = Message.create(message_type:"text", content:"I'm good. You?", user_id:6, channel_id:3)
message13 = Message.create(message_type:"text", content:"Good, do you want to play board game?", user_id:1, channel_id:3)
message14 = Message.create(message_type:"text", content:"Yeah!", user_id:6, channel_id:3)

#direct4
message15 = Message.create(message_type:"text", content: "We supply a series of design principles, practical patterns and high quality design
resources (Sketch and Axure), to help people create their product prototypes beautifully and
efficiently.", user_id:1, channel_id:4)
message16 = Message.create(message_type:"text", content:"We supply a series of design principles, practical patterns and high quality design
resources (Sketch and Axure), to help people create their product prototypes beautifully and
efficiently.", user_id:2, channel_id:4)


userchannel1= Userchannel.create(user_id:1, channel_id:1)
userchannel2= Userchannel.create(user_id:2, channel_id:1)
userchannel3= Userchannel.create(user_id:4, channel_id:1)
userchannel4= Userchannel.create(user_id:6, channel_id:1)
userchannel5= Userchannel.create(user_id:7, channel_id:1)

userchannel6= Userchannel.create(user_id:1, channel_id:2)
userchannel7= Userchannel.create(user_id:7, channel_id:2)
userchannel8= Userchannel.create(user_id:2, channel_id:2)

userchannel9= Userchannel.create(user_id:1, channel_id:3)
userchannel10= Userchannel.create(user_id:6, channel_id:3)

userchannel11=Userchannel.create(user_id:1, channel_id:4)
userchannel12=Userchannel.create(user_id:2, channel_id:4)

# userchannel6= Userchannel.create(user_id:3, channel_id:2)
# userchannel7= Userchannel.create(user_id:4, channel_id:2)
# userchannel8= Userchannel.create(user_id:2, channel_id:3)
# userchannel8= Userchannel.create(user_id:1, channel_id:3)
# userchannel8= Userchannel.create(user_id:1, channel_id:4)
# userchannel8= Userchannel.create(user_id:3, channel_id:4)
