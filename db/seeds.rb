puts "Cleaning up the database"

Channel.destroy_all
Category.destroy_all
Spreadsheet.destroy_all

puts "All clean!"

########################################################

puts "Creating categories"

welcome = Category.create!(name: "Welcome Moisties", description: "This is the first section you'll see when joining The Oasis.")
general = Category.create!(name: "ACNH General", description: "This is where we talk and get help with anything Animal Crossing related.")
moist = Category.create!(name: "Moist Me", description: "This is where you can get help to get your daily golden watering sparkles!")
market = Category.create!(name: "The Market", description: "A place dedicated to trading resources, Nook Mile items, flowers and catalogging.")
daily = Category.create!(name: "Daily Happenings", description: "This is where you can host your daily visitors, turnip prices and just have people come hang out at your island.")
off_topic = Category.create!(name: "Off Topic", description: "You'll find anything non Animal Crossing related in here.")
open_island = Category.create!(name: "Open Island Weekend", description: "Host games, guided tours or have people browse your island. A perfect way to get inspiration! Note: this section is only open once a month!")

puts "Done creating categories"

########################################################

puts "Creating channels"

landing = Channel.create!(name: "🌴 edge-of-the-oasis", description: "This is the first channel you'll see when joining The Oasis, answer a small quiz to get access to the whole server!", category: welcome)
Channel.create!(name: "🛬 airport", description: "Get ready to welcome all the new people here!", category: welcome)
Channel.create!(name: "🔊 announcements", description: "This is where the team of moderators will post important updates to the server, make sure to always read the posts in this channel.", category: welcome)
Channel.create!(name: "📖 rules", description: "In this channel you’ll find the server rules, it’s important to read those before using the server.", category: welcome)
Channel.create!(name: "📮 suggestions-box", description: "Feedback, suggestions and everything you want the mods to know goes here.", category: welcome)
Channel.create!(name: "👥 role-selection", description: "Use this channel to add some informative roles to your profile, it's not mandatory but can be helpful for other members if you do.", category: welcome)
Channel.create!(name: "📥 nickname-requests", description: "Setup your nickname properly here, it helps provide safety on our server so please do it. It's just your in-game nickname + island name.", category: welcome)
Channel.create!(name: "🐪 the-desert", description: "This is where you'll end up in case you answer the entry quiz wrong.", category: welcome)

puts "Done creating channels"

########################################################

puts "Creating spreadsheets"

Spreadsheet.create!(title: "Dream Codes", url: "https://docs.google.com/spreadsheets/d/1JZS3UtLjJpJvPYyqKCoHMDgM_iJklsQSJ4CGwYiWsbA/edit#gid=0", icon: "https://discordapp.com/assets/f341538d6092b98ba32c58ad45537267.svg", channel: landing)
Spreadsheet.create!(title: "DIY Matchmaking", url: "https://docs.google.com/spreadsheets/d/1tsPJ7aWj0cgKaHHwve9GdTO--txhgsS7BpsPWi5Xl2o/edit#gid=1480786600", icon: "https://cdn.discordapp.com/emojis/727256338798870549.png?v=1", channel: landing)
Spreadsheet.create!(title: "Catalouge Listing", url: "https://docs.google.com/spreadsheets/d/1uFXnB8az9IDoXYmjLLR9yI23eUb5aEc0ahMgIDqi7Bs/edit#gid=283475619", icon: "https://cdn.nookazon.com/nookazon/icons/touch.png", channel: landing)

puts "Done creating spreadsheets"






