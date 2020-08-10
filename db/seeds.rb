puts "Cleaning up the database"

Bot.destroy_all
Channel.destroy_all
Category.destroy_all
Spreadsheet.destroy_all

puts "All clean!"

########################################################

puts "Creating categories"

all_channels = Category.create!(name: "All Channels", description: "A list of all server channels to browse through!", icon: "🔎")
welcome = Category.create!(name: "Welcome Moisties", description: "This is the first section you'll see when joining The Oasis.", icon: "✈️")
general = Category.create!(name: "ACNH General", description: "This is where we talk and get help with anything Animal Crossing related.", icon: "🍃")
moist = Category.create!(name: "Moist Me", description: "This is where you can get help to get your daily golden watering sparkles!", icon: "✨")
market = Category.create!(name: "The Market", description: "A place dedicated to trading resources, Nook Mile items, flowers and catalogging.", icon: "🤝")
daily = Category.create!(name: "Daily Happenings", description: "This is where you can host your daily visitors, turnip prices and just have people come hang out at your island.", icon: "⭐️")
off_topic = Category.create!(name: "Off Topic", description: "You'll find anything non Animal Crossing related in here.", icon: "💬")
open_island = Category.create!(name: "Open Island Weekend", description: "Host games, guided tours or have people browse your island. A perfect way to get inspiration! Note: this section is only open once a month!", icon: "🏝")

puts "Done creating categories"

########################################################

puts "Creating channels"

# Welcome section
landing = Channel.create!(name: "🌴 edge-of-the-oasis", description: "This is the first channel you'll see when joining The Oasis, answer a small quiz to get access to the whole server!", category: welcome)
Channel.create!(name: "🛬 airport", description: "Get ready to welcome all the new people here!", category: welcome)
Channel.create!(name: "🔊 announcements", description: "This is where the team of moderators will post important updates to the server, make sure to always read the posts in this channel.", category: welcome)
Channel.create!(name: "📖 rules", description: "In this channel you’ll find the server rules, it’s important to read those before using the server.", category: welcome)
Channel.create!(name: "📮 suggestions-box", description: "Feedback, suggestions and everything you want the mods to know goes here.", category: welcome)
Channel.create!(name: "👥 role-selection", description: "Use this channel to add some informative roles to your profile, it's not mandatory but can be helpful for other members if you do.", category: welcome)
Channel.create!(name: "📥 nickname-requests", description: "Setup your nickname properly here, it helps provide safety on our server so please do it. It's just your in-game nickname + island name.", category: welcome)
Channel.create!(name: "🐪 the-desert", description: "This is where you'll end up in case you answer the entry quiz wrong.", category: welcome)

# ACNH general section
Channel.create!(name: "🍃 acnh-chit-chat", description: "Discuss anything ACNH related here. Ask questions, help your buddies and get friends.", category: general)
Channel.create!(name: "🔎 villager-hunt", description: "Going on an island hunt for villagers? Wanna spectate another member's hunt? This channel's for you! <br><br> 👀 Go to the #👥role-selection channel for the Spectators role if you want to be pinged whenever a hunt is going on <br> 👀 If you want people to keep you company during your hunt, just ping the Spectators!", category: general)
Channel.create!(name: "📸 island-exhibition", description: "If you're proud of something on your island, or even your whole island, and you want to show it to the world this is the place to do it! You can also use this channel to find inspiration and ask for opinions on your current work.", category: general)
Channel.create!(name: "🎨 ables-corner", description: "The place to post your custom designs and get help to find the perfect pattern that you might be looking for! There's some real custom design wizards on our server so don't be shy to ask for help!", category: general)
Channel.create!(name: "🧤 ask-a-gardener", description: "Breeding, cloning, all the different flower genotypes, layouts and so much more. It can be difficult to navigate in sometimes so this is the place to ask for help!", category: general)
Channel.create!(name: "❔ in-game-help", description: "A channel to find helpful guides and infographics, you can search by tags. You're also free to ask any game related questions you might have!", category: general)
Channel.create!(name: "💌 wishlists", description: "Post your wishlist here so people can help you find what you're looking for, and don't worry, people will help you out if you post in this channel! You may make a text wishlist, post an external wishlist site or share a Google Spreadsheets link to your wish list! It is up to you. <br><br> ♥️ Please remember to only post once to prevent confusion over which list is the most updated list! <br> ♥️ If you want to update your wishlist, please edit your previous post. <br> ♥️ Please use this format when posting: <br> _Code: *friend code or DM me* <br> _Wishlist: *either external link or typed list*", category: general)
thank = Channel.create!(name: "😌 thank-you-notes", description: "Thank the people who helped you out and that you think deserves a little something extra!", category: general)

# Moist me section
water = Channel.create!(name: "✨ sparkle-station", description: "Want your flowers watered to get those golden sparkles? This is the place. If you want to optimize your flower breeding and cloning people are more than happy to help you out if you help them out, this is a queue system to make sure everyone gets their sparkles! <br><br> 💧 Ping the current mod on duty if you need help! Type <span class='command'>q!mod</span> to see who that is. <br> 💧 Take turns. Do not bump into each other or water the same flowers at once. <br> 💧 Please keep your plots within 1 map square or 30 water actions. <br> 💧 Don't learn DIY's on islands. <br> 💧 If there is no mod on duty, please ping the following in sequence (until someone answers): an active mod (green & yellow), an active mod-lead (yellow), and lastly ping the whole mod team. Please give ample time for each person you ping to answer before escalating it. Abuse of this system may lead to a mute.", category: moist)

# The market section
nook = Channel.create!(name: "🎫 nook-trading", description: "Trade or give away your in-game resources and your Nook Mile Items (NMI) in this channel. This channel is linked with #🎫📁nook-listings where you'll see the current and past trades. <br><br> 🧱 In-game resources is things like stone, gold nuggets, iron nuggets, wood, star fragments, shells and such. Note: NMTs and bells is not a resource.", category: market)
nook_listing = Channel.create!(name: "🎫📁 nook-listings", description: "This is where you'll see current and past trades from #🎫nook-trading.", category: market)
cata = Channel.create!(name: "📜 cata-club", description: "Host catalogue parties and catalogue swaps here. You can also use this channel to ask if anyone has something available to catalogue that you're looking for. This channel is linked with #📜📁cata-club-listings where you'll see the active posts. <br><br> 🍃 Catalogue Parties are for when a host wants people to have people catalogue their items. Visitors should NOT bring items over to these islands. <br> 🍃 Catalogue Swaps are when people want to go to an island to touch trade catalogue items. Visitors bring the items they want.", category: market)
cata_listing = Channel.create!(name: "📜📁 cata-club-listings", description: "This is where you'll see the active posts from #📜cata-club.", category: market)
Channel.create!(name: "🌸 flower-market", description: "Trade and give away your flowers here! Feel free to ask for flowers too, a lot of people are flooded with hybrids and are happy to help you out. You can also use this channel to ask for specific seeds in people Nook's or if they have Leif at their island. <br><br> 🌷 Only flower for flower trades or giveaways <br> 🌷 Ask for specific seeds and bushes at people's Nook's or Leif", category: market)


# Daily happenings section
Channel.create!(name: "🏃 come-on-over", description: "Have people over to browse, visit your Able's, Nook's, give away items you don't need, ask for help with water. This is the channel to use when there's no other channel that fits the bill.", category: daily)
Channel.create!(name: "📦 in-boxes", description: "Let people know if you have a villager in boxes or if there's a specific one you're looking for too. Something with Amiibos...", category: daily)
guest = Channel.create!(name: "🌟 daily-guest", description: "This is the channel to use when you want to host a daily NPC villager, Celeste, Saharah, Kicks, Leif and your meteor showers. This channel is linked with #🌟❕guest-listings where you'll see the active posts. <br/><br/> 🌟 Please refrain from learning DIY's on islands. <br/> 🌟 Respect host's islands and don't pluck, pick or take without permission. <br/> 🌟 Kindly keep the Dodo Code to yourself, ask the host nicely if you want somebody who isn't on the server to join.", category: daily)
guest_listing = Channel.create!(name: "🌟❕ guest-listings", description: "This is where you'll see the active posts from #🌟daily-guest.", category: daily)
diy = Channel.create!(name: "🔨 diy-sharing", description: "If you have a villager crafting a DIY recipe, or would like to give away your spare DIYs this is the channel! #🔨❕diy-listings where you'll see the active posts. <br><br> ⚙️ Please refrain from learning DIY's on islands. <br> ⚙️ Respect host's islands and don't pluck, pick or take without permission. <br> ⚙️ Kindly keep the Dodo Code to yourself, ask the host nicely if you want somebody who isn't on the server to join.", category: daily)
diy_listing = Channel.create!(name: "🔨❕ diy-listings", description: "This is where you'll see the active posts from #🔨diy-sharing.", category: daily)
turnip = Channel.create!(name: "📉 stalk-market", description: "Post here if you have a large spike and a good turnip price or if you have Daisy Mae selling turnips for a low price. This channel is linked with #📉❕stalk-listings where you'll see the active posts. <br><br> 💰 Please refrain from learning DIY's on islands. <br> 💰 Respect host's islands and don't pluck, pick or take without permission. <br> 💰 Kindly keep the Dodo Code to yourself, ask the host nicely if you want somebody who isn't on the server to join.", category: daily)
turnip_listing = Channel.create!(name: "📉❕ stalk-listings", description: "This is where you'll see the active posts from #📉stalk-market.", category: daily)
art = Channel.create!(name: "🦊 art-mart", description: "This is the channel to use when giving away art and hosting your Redd visits. This channel is linked with #🦊❕art-listings where you'll see the active posts.", category: daily)
art_listing = Channel.create!(name: "🦊❕ art-listings", description: "This is where you'll see the active posts from #🦊art-mart.", category: daily)
Channel.create!(name: "🐳🐝 island-events", description: "A channel to host and find groups to do Bug Off and Fishing Tournament together to make it more fun! You're free to use the queue system in #🌟 daily-guest when hosting. <br><br> Note: This channel is only open during weekends with Bug Off and Fishing Tourney events.", category: daily)

# Off topic section

Channel.create!(name: "💬 off-topic", description: "The same as #💭off-topic-too: a chat for all things besides ACNH. Please stay civil. Talk about nothing and everything. We have duplicate channels so you can always start a new conversation without interrupting an already ongoing topic.", category: off_topic)
Channel.create!(name: "💭 off-topic-too", description: "The same as #💬off-topic: a chat for all things besides ACNH. Please stay civil. Talk about nothing and everything. We have duplicate channels so you can always start a new conversation without interrupting an already ongoing topic.", category: off_topic)
Channel.create!(name: "🐶 the-zoo", description: "Besides loving Animal Crossing we also love your real life animals. Show them off, we would love to see them!", category: off_topic)
Channel.create!(name: "🍲 yum-kitchen", description: "Show off your baking skills, your best tips for eating out, your most delicious recipes and everything food related. Yum!", category: off_topic)
Channel.create!(name: "🤪 memes", description: "Not much to explain here. Wanna laugh, look in this channel!", category: off_topic)
Channel.create!(name: "🎮 play-date", description: "A lot of people also enjoy other games besides AC, in here you can find people to play with. There's also voicechats to do live group games such as Jackbox, DnD and much more, the sky is the limit!", category: off_topic)

# Open island section
Channel.create!(name: "🗓 open-island-advertisement", description: "Please advertise your islands here during Open Island Weekends (dates are announced in #🔊announcements). You may include details such as type of island, main attractions, tour information, how long and when you will open. You may also use relative time like 'I will be opening my island for garden viewing in 12 hours for 8 hours', if that helps with not dealing with timezones. <br><br> ⏱ Please keep your advertisements to one post per user or island type (for example, if you advertise for island viewing but want to turn it into a guided tour later, you may make a new post). <br><br> ⏱ Note: This channel is only open during Open Island Weekends!" , category: open_island)
island = Channel.create!(name: "🏝 open-island-chat", description: "Talk about all the cool island you're visiting, give the host feedback and get inspired! This channel is linked with #🏝island-listings <br><br> ⛱ Please refrain from learning DIY's on islands. <br> ⛱ Respect host's islands and don't pluck, pick or take without permission. <br> ⛱ Kindly keep the Dodo Code to yourself, ask the host nicely if you want somebody who isn't on the server to join. <br> ⛱ Please report any falsely advertising, griefing, rule breaking members and/or islands to any available mod ASAP. <br><br> ⛱ Note: This channel is only open during Open Island Weekends!" , category: open_island)
island_listing = Channel.create!(name: "🏝 island-listings", description: "This is the channel where you'll see all the active posts from #🏝open-island-chat <br><br> ⛱ Note: This channel is only open during Open Island Weekends!" , category: open_island)

puts "Done creating channels"

########################################################

puts "Creating spreadsheets"

Spreadsheet.create!(title: "Dream Codes", url: "https://docs.google.com/spreadsheets/d/1JZS3UtLjJpJvPYyqKCoHMDgM_iJklsQSJ4CGwYiWsbA/edit#gid=0", icon: "https://discordapp.com/assets/f341538d6092b98ba32c58ad45537267.svg", channel: landing)
Spreadsheet.create!(title: "DIY Matchmaking", url: "https://docs.google.com/spreadsheets/d/1tsPJ7aWj0cgKaHHwve9GdTO--txhgsS7BpsPWi5Xl2o/edit#gid=1480786600", icon: "https://cdn.discordapp.com/emojis/727256338798870549.png?v=1", channel: landing)
Spreadsheet.create!(title: "Catalogue Listing", url: "https://docs.google.com/spreadsheets/d/1uFXnB8az9IDoXYmjLLR9yI23eUb5aEc0ahMgIDqi7Bs/edit#gid=283475619", icon: "https://cdn.nookazon.com/nookazon/icons/touch.png", channel: landing)

puts "Done creating spreadsheets"

########################################################

puts "Creating bots"

redd = Bot.create!(
  name: "Redd",
  avatar: "https://cdn.discordapp.com/attachments/726075201397325854/727888659033882705/Bot_Redd_HeadOnly_Transparent.png",
  intro: "An art bot made to make hosting your Redd visits and art giveaways easy and safe!",
  host: "🦊 Use <span class='command'>i!new</span> followed by the template below to create a new post. <br> 🦊 Use <span class='command'>i!queue dodo_code</span>, where dodo_code is your dodo code, Redd will DM that to the buyers when they join the queue. Use the same command again to update your dodo code, Redd will once again DM the new dodo code to everyone in queue. <br> 🦊 Use <span class='command'>i!delete</span> when you’re done hosting to delete your post.",
  queue: "🦊 To join a queue simply tap the emoji number on the post 1️⃣, 2️⃣, 3️⃣ or 4️⃣ to claim the art piece responding to that number. If you were fast enough to get it, Redd will DM you the dodo code and you’re good to go. <br> 🦊 When you’ve bought or collected your piece of art, use the command <span class='command'>I!buy</span> to update the queue and mark your claimed art piece as bought. No need to do more than that!",
  template: "i!new <br> Redd Alert!!! <br> Shops: <br> Water: <br> Other: <br> Items: <br> 1. *name_of_art_piece* (real/fake) <br> 2. *name_of_art_piece* (real/fake) <br> 3. *name_of_art_piece* (real/fake) <br> 4. *name_of_art_piece* (real/fake)",
  example: "i!new <br> Redd is here, wooo!!! <br> Shops: Sure, limited items as well <br> Water: No thanks, all golden <br> Other: I'll be afk, ping me if there's any issues <br> Items: <br> 1. Valiant statue (real) <br> 2. Motherly statue (fake) <br> 3. Calm painting (real)",
  commands: "<span class='command'>i!template</span> <br> Will send you a template to copy paste and fill in. Easy peasy! <br><br> <span class='command'>i!remove @mention </span> <br> The host can use this command if someone doesn't show up <br><br> <span class='command'>i!art</span> <br> Will send you a complete list of the art in the game, also a guide to know if your art is real or fake."
)

clippy = Bot.create!(name: "Clippy", avatar: "https://cdn.discordapp.com/attachments/709008918575185961/730798938264829962/Clippy.png", intro: "", host: "", queue: "", template: "", example: "", commands: "")
moistmaker = Bot.create!(name: "Moistmaker", avatar: "https://cdn.discordapp.com/emojis/737328744309719142.png?v=1", intro: "", host: "", queue: "", template: "", example: "", commands: "")
tom = Bot.create!(name: "Tom Nook", avatar: "https://cdn.discordapp.com/attachments/727264651162681505/728199016306835476/Bot_Tom_Head_Transparent.png", intro: "", host: "", queue: "", template: "", example: "", commands: "")
nooklings = Bot.create!(name: "Timmy and Tommy", avatar: "https://cdn.discordapp.com/attachments/727264651162681505/728199007482150962/Bot_Nooklings_Head_Transparent.png", intro: "", host: "", queue: "", template: "", example: "", commands: "")
pascal = Bot.create!(name: "Pascal", avatar: "https://cdn.discordapp.com/attachments/726075201397325854/731557960282537984/Bot_Pascal_Head_Transparent.png", intro: "", host: "", queue: "", template: "", example: "", commands: "")

puts "Done creating bots"

########################################################

puts "Linking bots to their channels"

BotChannel.create!(bot: redd, channel: art)
BotChannel.create!(bot: redd, channel: art_listing)

BotChannel.create!(bot: clippy, channel: guest)
BotChannel.create!(bot: clippy, channel: guest_listing)

BotChannel.create!(bot: clippy, channel: diy)
BotChannel.create!(bot: clippy, channel: diy_listing)

BotChannel.create!(bot: clippy, channel: turnip)
BotChannel.create!(bot: clippy, channel: turnip_listing)

BotChannel.create!(bot: tom, channel: nook)
BotChannel.create!(bot: tom, channel: nook_listing)

BotChannel.create!(bot: nooklings, channel: cata)
BotChannel.create!(bot: nooklings, channel: cata_listing)

BotChannel.create!(bot: clippy, channel: island)
BotChannel.create!(bot: clippy, channel: island_listing)

BotChannel.create!(bot: moistmaker, channel: water)

BotChannel.create!(bot: pascal, channel: thank)

puts "Done linking bots to channels"



