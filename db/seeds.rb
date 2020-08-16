puts "Cleaning up the database"

Infographic.destroy_all
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
market = Category.create!(name: "The Market", description: "A place dedicated to trading resources, Nook Mile items, flowers and cataloging.", icon: "🤝")
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
Channel.create!(name: "📖 rules", description: "In this channel you’ll find the server rules. It’s important to read those before using the server.", category: welcome)
Channel.create!(name: "📮 suggestions-box", description: "Feedback, suggestions and everything you want the mods to know goes here.", category: welcome)
Channel.create!(name: "👥 role-selection", description: "Use this channel to add some informative roles to your profile. It's not mandatory but can be helpful for other members if you do.", category: welcome)
Channel.create!(name: "📥 nickname-requests", description: "Setup your nickname properly here. It helps provide safety on our server, so please do it. The requested format is your in-game nickname + island name.", category: welcome)
Channel.create!(name: "🐪 the-desert", description: "This is where you'll end up in case you answer the entry quiz wrong. This channel will guide you on how to redo the quiz.", category: welcome)

# ACNH general section
Channel.create!(name: "🍃 acnh-chit-chat", description: "Discuss anything ACNH related here. Ask questions, help your buddies and get friends.", category: general)
Channel.create!(name: "🔎 villager-hunt", description: "Going on an island hunt for villagers? Wanna spectate another member's hunt? This channel's for you! <br><br> 👀 Go to the #👥role-selection channel for the Spectators role if you want to be pinged whenever a hunt is going on. <br> 👀 If you want people to keep you company during your hunt, just ping the <span class='person'>@Spectators</span>.", category: general)
Channel.create!(name: "📸 island-exhibition", description: "If you're proud of something on your island, or even your whole island, and you want to show it to the world this is the place to do it! You can also use this channel to find inspiration and ask for opinions on your current work.", category: general)
Channel.create!(name: "🎨 ables-corner", description: "The place to post your custom designs and get help to find the perfect pattern that you might be looking for! There's some real custom design wizards on our server, so don't be shy to ask for help!", category: general)
Channel.create!(name: "🧤 ask-a-gardener", description: "Breeding, cloning, all the different flower genotypes, layouts and so much more. It can be difficult to navigate the huge amount of flower information sometimes, so this is the place to ask for help!", category: general)
Channel.create!(name: "❔ in-game-help", description: "A channel to find helpful guides and infographics, you can search by tags. You're also free to ask any game related questions you might have!", category: general)
Channel.create!(name: "💌 wishlists", description: "Post your wishlist here so people can help you find what you're looking for, and don't worry, people will help you out if you post in this channel! You may make a text wishlist, post an external wishlist site or share a Google Spreadsheets link to your wish list! It is up to you. <br><br> ♥️ Please remember to only post once to prevent confusion over which list is the most updated list! <br> ♥️ If you want to update your wishlist, please edit your previous post. <br> ♥️ Please use this format when posting to make it easier for people to use the search function: <br><br> <span class='command'>_Code: *friend code or DM me* <br> _Wishlist: *either external link or typed list*</span>", category: general)
thank = Channel.create!(name: "😌 thank-you-notes", description: "Thank the people who helped you out and who you think deserve a little something extra!", category: general)

# Moist me section
water = Channel.create!(name: "✨ sparkle-station", description: "Want your flowers watered to get those golden sparkles? This is the place. If you want to optimize your flower breeding and cloning people are more than happy to help you out if you help them out, this is a queue system to make sure everyone gets their sparkles! <br><br> 💧 Ping the current mod on duty if you need help! Type <span class='command'>q!mod</span> to see who that is. <br> 💧 Take turns. Do not bump into each other or water the same flowers at once as the water for double watered flowers will not count. <br> 💧 Please keep your plots within 1 map square or 30 water actions. <br> 💧 Don't learn DIY's on islands. <br> 💧 If there is no mod on duty, please ping the following in sequence (until someone answers): an online mod (both green & yellow) that shows up on your sidebar, and lastly ping the whole mod team. Please give ample time for each person you ping to answer before escalating it. Abuse of this system may lead to a mute.", category: moist)

# The market section
nook = Channel.create!(name: "🎫 nook-trading", description: "Trade or give away your in-game resources and your Nook Mile Items (NMI) in this channel. This channel is linked with #🎫📁nook-listings where you'll see the current and past trades. <br><br> 🧱 In-game resources are things like stone, gold nuggets, iron nuggets, wood, star fragments, shells and such. Note: NMTs and bells are not a resource.", category: market)
nook_listing = Channel.create!(name: "🎫📁 nook-listings", description: "This is where you'll see current and past trades from #🎫nook-trading.", category: market)
cata = Channel.create!(name: "📜 cata-club", description: "Host catalogue parties and catalogue swaps here. You can also use this channel to ask if anyone has something available to catalogue that you're looking for. This channel is linked with #📜📁cata-club-listings where you'll see the active posts. <br><br> 🍃 Catalogue Parties are for when a host wants people to catalogue their items. Visitors should NOT bring items over to these islands. <br> 🍃 Catalogue Swaps are when people want to go to an island to touch trade catalogue items. Visitors bring the items they want to offer to others.", category: market)
cata_listing = Channel.create!(name: "📜📁 cata-club-listings", description: "This is where you'll see the active posts from #📜cata-club.", category: market)
Channel.create!(name: "🌸 flower-market", description: "Trade and give away your flowers here! Feel free to ask for flowers too, a lot of people are flooded with hybrids and are happy to help you out. You can also use this channel to ask for specific seeds in people Nook's or if they have Leif at their island. <br><br> 🌷 Only flower for flower trades or giveaways. <br> 🌷 Ask for specific seeds and bushes at people's Nook's or Leif.", category: market)


# Daily happenings section
Channel.create!(name: "🏃 come-on-over", description: "Have people over to browse, visit your Able's, Nook's, give away items you don't need, ask for help with water. This is the channel to use when there's no other channel that fits the bill.", category: daily)
Channel.create!(name: "📦 in-boxes", description: "Let people know if you have a villager in boxes or if there's a specific one you're looking for too. A lot of our members offer Amiibo help too, all you have to do is ask!", category: daily)
guest = Channel.create!(name: "🌟 daily-guest", description: "This is the channel to use when you want to host a daily NPC villager, Celeste, Saharah, Kicks, Leif and your meteor showers. This channel is linked with #🌟❕guest-listings where you'll see the active posts. <br/><br/> 🌟 Please refrain from learning DIY's on islands. <br/> 🌟 Respect host's islands and don't pluck, pick or take without permission. <br/> 🌟 Kindly keep the Dodo Code to yourself. Ask the host nicely if you want somebody who isn't on the server to join.", category: daily)
guest_listing = Channel.create!(name: "🌟❕ guest-listings", description: "This is where you'll see the active posts from #🌟daily-guest.", category: daily)
diy = Channel.create!(name: "🔨 diy-sharing", description: "If you have a villager crafting a DIY recipe, or would like to give away your spare DIYs, this is the channel! #🔨❕diy-listings where you'll see the active posts. <br><br> ⚙️ Please refrain from learning DIY's on islands. <br> ⚙️ Respect host's islands and don't pluck, pick or take without permission. <br> ⚙️ Kindly keep the Dodo Code to yourself. Ask the host nicely if you want somebody who isn't on the server to join.", category: daily)
diy_listing = Channel.create!(name: "🔨❕ diy-listings", description: "This is where you'll see the active posts from #🔨diy-sharing.", category: daily)
turnip = Channel.create!(name: "📉 stalk-market", description: "Post here if you want to let people come sell their turnips on your island or if you have Daisy Mae selling turnips for a low price. This channel is linked with #📉❕stalk-listings where you'll see the active posts. <br><br> 💰 Please refrain from learning DIY's on islands. <br> 💰 Respect host's islands and don't pluck, pick or take without permission. <br> 💰 Kindly keep the Dodo Code to yourself. Ask the host nicely if you want somebody who isn't on the server to join.", category: daily)
turnip_listing = Channel.create!(name: "📉❕ stalk-listings", description: "This is where you'll see the active posts from #📉stalk-market.", category: daily)
art = Channel.create!(name: "🦊 art-mart", description: "This is the channel to use when giving away art and hosting your Redd visits. This is also where you'll find The Art Warehouse, an art storage of donated art held by our art dealers. You can claim and request free art from the art dealers, just let them know what you're looking for. This channel is linked with #🦊❕art-listings where you'll see the active posts.", category: daily)
art_listing = Channel.create!(name: "🦊❕ art-listings", description: "This is where you'll see the active posts from #🦊art-mart.", category: daily)
Channel.create!(name: "🐳🐝 island-events", description: "A channel to host and find groups to do Bug Off and Fishing Tournament together to make it more fun! You're free to use the queue system in #🌟 daily-guest when hosting. <br><br> Note: This channel is only open during weekends with Bug Off and Fishing Tourney events.", category: daily)

# Off topic section

Channel.create!(name: "💬 off-topic", description: "The same as #💭off-topic-too: a chat for all things besides ACNH. Please stay civil. Talk about nothing and everything. We have duplicate channels so you can always start a new conversation without interrupting an already ongoing topic.", category: off_topic)
Channel.create!(name: "💭 off-topic-too", description: "The same as #💬off-topic: a chat for all things besides ACNH. Please stay civil. Talk about nothing and everything. We have duplicate channels so you can always start a new conversation without interrupting an already ongoing topic.", category: off_topic)
Channel.create!(name: "🐶 the-zoo", description: "Besides loving Animal Crossing we also love your real life animals. Show them off, we would love to see them!", category: off_topic)
Channel.create!(name: "🍲 yum-kitchen", description: "Show off your baking skills, your best tips for eating out, your most delicious recipes and everything food related. Yum!", category: off_topic)
Channel.create!(name: "🤪 memes", description: "Not much to explain here. Wanna laugh, look in this channel!", category: off_topic)
Channel.create!(name: "🎮 play-date", description: "A lot of people also enjoy other games besides AC, in here you can find people to play with. There's also voicechats to do live group games such as Jackbox, DnD and much more. The sky is the limit!", category: off_topic)

# Open island section
Channel.create!(name: "🗓 open-island-advertisement", description: "Please advertise your islands here during Open Island Weekends (dates are announced in #🔊announcements). You may include details such as type of island, main attractions, tour information, how long and when you will open. You may also use relative time like 'I will be opening my island for garden viewing in 12 hours for 8 hours', if that helps with not dealing with timezones. <br><br> ⏱ Please keep your advertisements to one post per user or island type (for example, if you advertise for island viewing but want to turn it into a guided tour later, you may make a new post). <br><br> ⏱ Note: This channel is only open during Open Island Weekends (once a month)!" , category: open_island)
island = Channel.create!(name: "🏝 open-island-chat", description: "Talk about all the cool island you're visiting, give the host feedback and get inspired! This channel is linked with #🏝island-listings <br><br> ⛱ Please refrain from learning DIY's on islands. <br> ⛱ Respect host's islands and don't pluck, pick or take without permission. <br> ⛱ Kindly keep the Dodo Code to yourself. Ask the host nicely if you want somebody who isn't on the server to join. <br> ⛱ Please report any falsely advertising, griefing, rule breaking members and/or islands to any available mod ASAP. <br><br> ⛱ Note: This channel is only open during Open Island Weekends (once a month)!" , category: open_island)
island_listing = Channel.create!(name: "🏝 island-listings", description: "This is the channel where you'll see all the active posts from #🏝open-island-chat <br><br> ⛱ Note: This channel is only open during Open Island Weekends (once a month)!" , category: open_island)

puts "Done creating channels"

########################################################

puts "Creating spreadsheets"

Spreadsheet.create!(title: "Dream Codes", url: "https://docs.google.com/spreadsheets/d/1JZS3UtLjJpJvPYyqKCoHMDgM_iJklsQSJ4CGwYiWsbA/edit#gid=0", icon: "https://discordapp.com/assets/f341538d6092b98ba32c58ad45537267.svg", channel: landing)
Spreadsheet.create!(title: "DIY Matchmaking", url: "https://docs.google.com/spreadsheets/d/1tsPJ7aWj0cgKaHHwve9GdTO--txhgsS7BpsPWi5Xl2o/edit#gid=1480786600", icon: "https://cdn.discordapp.com/emojis/727256338798870549.png?v=1", channel: landing)
Spreadsheet.create!(title: "Catalogue Listing", url: "https://docs.google.com/spreadsheets/d/1uFXnB8az9IDoXYmjLLR9yI23eUb5aEc0ahMgIDqi7Bs/edit#gid=283475619", icon: "https://cdn.discordapp.com/emojis/727256481522516162.png?v=1", channel: landing)
Spreadsheet.create!(title: "Requestable Warehouse Art", url: "https://docs.google.com/spreadsheets/d/1XbV7LyLABYdjsmLRV2OsiJnFSR273xmuwX42xyiqKPQ/edit#gid=0", icon: "https://cdn.discordapp.com/emojis/728256719494447105.png?v=1", channel: landing)
Spreadsheet.create!(title: "Villager Compatibility Tool", url: "https://docs.google.com/spreadsheets/d/1Sc2HJRcgg-Q_CsFnewIB3n2f4Tgj-QT33qUCrItj0MU/edit#gid=773486971", icon: "https://discordapp.com/assets/01c80723fb8cbdcb9e22747cd88e07e4.svg", channel: landing)
Spreadsheet.create!(title: "Time-Travel, Glitches & Datamine Masterpost", url: "https://docs.google.com/document/d/169F3cp2THB-9G74rSzAWEqDrVY3yBSHtkOhPiP-uf9A/edit?ts=5ec81591", icon: "https://discordapp.com/assets/c3b6bfe6efe3d61d1e9198fe347ca06c.svg", channel: landing)
Spreadsheet.create!(title: "Villagers, House Exteriors & Interiors", url: "https://docs.google.com/spreadsheets/d/1QrLaxUqxa56ncaoBVR7IbPfx1nShoMd81Odm0BgXTd4/edit#gid=0", icon: "https://cdn.discordapp.com/emojis/707365923555770408.png?v=1", channel: landing)
Spreadsheet.create!(title: "All About Garden Layouts", url: "https://yuexr.github.io/acnh/garden_layouts.html", icon: "https://cdn.discordapp.com/emojis/707349667964256308.png?v=1", channel: landing)
Spreadsheet.create!(title: "Blue Rose Methods", url: "https://yuexr.github.io/acnh/bluerose.html", icon: "https://cdn.discordapp.com/emojis/727261998123057232.png?v=1", channel: landing)
Spreadsheet.create!(title: "Flower Breeding Simulator", url: "https://gardenscience.ac/", icon: "https://cdn.discordapp.com/emojis/727338709481029722.png?v=1", channel: landing)
Spreadsheet.create!(title: "MeteoNook: Find Your Weather Seed", url: "https://wuffs.org/acnh/weather/", icon: "https://discordapp.com/assets/e63b6822e54d6334126831f99fbda142.svg", channel: landing)
Spreadsheet.create!(title: "Turnip Prophet: Predict Your Turnip Price", url: "https://turnipprophet.io/", icon: "https://cdn.discordapp.com/emojis/727256317357719633.png?v=1", channel: landing)

puts "Done creating spreadsheets"

########################################################

puts "Creating bots"

redd = Bot.create!(
  name: "Redd",
  avatar: "https://cdn.discordapp.com/attachments/726075201397325854/727888659033882705/Bot_Redd_HeadOnly_Transparent.png",
  intro: "An art bot made to make hosting your Redd visits and art giveaways easy and safe!",
  host: "🦊 Use <span class='command'>i!new</span> followed by the template below to create a new post. <br> 🦊 Use <span class='command'>i!queue dodo_code</span>, where dodo_code is your dodo code, Redd will DM that to the buyers when they join the queue. Use the same command again to update your dodo code, Redd will once again DM the new dodo code to everyone in queue. <br> 🦊 Use <span class='command'>i!delete</span> when you’re done hosting to delete your post.",
  queue: "🦊 To join a queue simply tap the emoji number on the post 1️⃣, 2️⃣, 3️⃣ or 4️⃣ to claim the art piece responding to that number. If you were fast enough to get it, Redd will DM you the dodo code and you’re good to go. <br> 🦊 When you’ve bought or collected your piece of art, use the command <span class='command'>I!buy</span> to update the queue and mark your claimed art piece as bought. No need to do more than that!",
  template: "i!new <br> Redd Alert!!! <br> Need ladder: <br> Shops: <br> Water: <br> Other: <br> Items: <br> 1. *name_of_art_piece* (real/fake) <br> 2. *name_of_art_piece* (real/fake) <br> 3. *name_of_art_piece* (real/fake) <br> 4. *name_of_art_piece* (real/fake)",
  example: "i!new <br> Redd is here, wooo!!! <br> Shops: Sure, limited items as well <br> Water: No thanks, all golden <br> Other: I'll be afk, ping me if there's any issues <br> Items: <br> 1. Valiant statue (real) <br> 2. Motherly statue (fake) <br> 3. Calm painting (real)",
  commands: "<span class='command'>i!template</span> <br> Will send you a template to copy paste and fill in. Easy peasy! <br><br> <span class='command'>i!remove <span class='person'>@person to remove</span> </span> <br> The host can use this command if someone doesn't show up <br><br> <span class='command'>i!art</span> <br> Will send you a complete list of the art in the game, also a guide to know if your art is real or fake."
)

pascal = Bot.create!(
  name: "Pascal",
  avatar: "https://cdn.discordapp.com/attachments/726075201397325854/731557960282537984/Bot_Pascal_Head_Transparent.png",
  intro: "A bot used to thank people you think deserve a little something extra!",
  host: "",
  queue: "",
  template: "i!thank <span class='person'>@person you want to thank</span> <br><br> or <br><br>i!thank  <span class='person'>@person you want to thank</span> *custom message*",
  example: "i!thank <span class='person'>@Superstar from Sprinkle</span> <br><br> or <br><br>i!thank <span class='person'>@Emma from Stardew</span> for your lovely presents and for hosting Celeste!",
  commands: ""
)

clippy = Bot.create!(
  name: "Clippy",
  avatar: "https://cdn.discordapp.com/attachments/709008918575185961/730798938264829962/Clippy.png",
  intro: "A queue bot made to make hosting and visiting islands easy and safe. Clippy is used to host turnip prices, meteor showers, NPC visits and villagers crafting DIYs.",
  host: "🖇 Use <span class='command'>n!new</span> followed by the template below to create a new post. <br> 🖇 Use <span class='command'>n!queue dodo_code queue_size</span> where dodo_code is your dodo code and queue size is the amount of people you want to visit at the same time, 3 is the default but for busy queues we recommend adjusting that to 2 people at a time. Clippy will DM the dodo code to anyone who joins the queue who are also within your set queue size. Use the same command again to update your dodo code. Clippy will once again DM the new dodo code to everyone in queue. <br> 🖇 Use <span class='command'>n!close</span> if you want to close the queue to avoid more people joining. <br> 🖇 Use <span class='command'>n!delete</span> when you’re done hosting to delete your post. <br><br> 💰 If you're hosting a good turnip price, we recommend mentioning that multiple trips are allowed but that people should re-queue to make space for everyone. <br> 🌟 Remember to adjust the visitor timeout if you're hosting a meteor shower since it can take more than 20 minutes per visitor.",
  queue: "🖇 To join a queue simply tap the airplane emoji in the matching listing channel ✈️, which will put you in line. When it's your turn, Clippy will DM you the dodo code and you’re good to go. <br> 🖇 When you've finished your visit make sure to un-react on the airplane emoji ✈️ to make space for the next one in line!",
  template: "Depending on what you're hosting<br><br>n!new <br> Visitor / DIY recipe / Price: <br> Location: <br> Code: (Don't include this if using a queue, which we recommend) <br> Shops: <br> Need Watering: <br> Other:",
  example: "Imagine I'm hosting Celeste<br><br>n!new <br> Visitor: Star birb Celeste is here <br> Location: Trapped left of airport <br> Code: Queue <br> Shops: All closed <br> Need Watering: No thanks, all golden <br> Other: Please take some free DIYs right side of airport.",
  commands: "<span class='command'>n!visitortimeout minutes</span> <br> A visitor will automatically get kicked from the queue after 20 minutes to avoid clogging. This command lets you change that if your visitors needs more time on your island. <br><br> <span class='command'>n!posttimeout hours</span> <br> To override the default post timeout of 3 hours, use this command where hours is the number of hours you'd like to change it to. <br><br> <span class='command'>n!remove <span class='person'>@person to remove</span> </span> <br> The host can use this command if someone doesn't show up or forgets to leave the queue."
)

moistmaker = Bot.create!(
  name: "Moistmaker",
  avatar: "https://cdn.discordapp.com/emojis/737328744309719142.png?v=1",
  intro: "This is a bot that helps you get your golden water sparkles every day to optimize your flower cloning and breeding.",
  host: "✨ To join the sparkle queue, type <span class='command'>q!join #</span>. Default is 5 waterers, so if you need less please specify how many. <span class='command'># = waterers needed.</span> <br> ✨ If there's a queue, helping to water can get you bumped up from the sparkle lobby to the actual sparkle queue. <br> ✨ When it's your turn, use <span class='command'>q!dodo code instructions_here</span>, Where code is your dodo code along with picture and / or written instructions in the same message. <br> ✨ Check attendence with minus key (-) > View Other Passports. <br> ✨ When everyone has landed, please leave the sparkle queue with the command <span class='command'>q!leave</span>. <br> ✨ If the session crashes, press the distress emoji react so the bot can ping your waterers. Use <span class='command'>q!dodo code instructions_here</span> again to put up your new code. <br> ✨ Use the minus key (-) to end session when everyone is done watering. <br> ✨ Please don't have people shop, browse and other things in the sparkle station as it will slow down the queue. <br> ✨ Only mods can ping <span class='person'>@Moistanaries</span> for help to make sure you get the amount waterers you need.",
  queue: "✨ React on the watercan emoji to join that island as a water helper. You can always check the pins to see the recent islands in need of water. If you click the can emoji but the queue is already full nothing will happen. <br> ✨ When you've reacted Moistmaker will DM you the dodo code and instructions. <br> ✨ Proceed to the island. Note: Interferences may last for 8 minutes while everyone arrives! Just be patient. <br> ✨ Please be courteous on islands. Do not pick, take or pluck without permission. <br> ✨ When everyone is done watering, the host will end the session. <b>Do not use the minus key (-) to leave quietly or leave through airport</b>." ,
  template: "q!join # <br><br> q!dodo dodo instructions_here",
  example: "q!join 3 <br><br> q!dodo F0BW8 Please water the 3 dirt patches right side of airport. Cans provided!",
  commands: "<span class='command'>q!view</span><br> Displays the current sparkle queue. <br><br> <span class='command'>q!mod</span><br> Check who's the current mod on duty. <br><br> <span class='command'>q!status</span><br> Check your watering quota. This isn't too important but we do expect people who uses the sparkle station to help out when they can. <br><br> <span class='command'>q!order</span><br> Become a Moistener! Join the order to get pinged to help on islands. <br><br> <span class='command'>q!retire</span><br> Retire from the Order of the Moist when you're done playing for the day to avoid getting pinged when you sleep."
)

tom = Bot.create!(
  name: "Tom Nook",
  avatar: "https://cdn.discordapp.com/attachments/727264651162681505/728199016306835476/Bot_Tom_Head_Transparent.png",
  intro: "A bot used to keep track of your Nook Mile Item and resource trades!",
  host: "🧱 Use <span class='command'>i!trade <span class='person'>@other_person</span> *terms of your deal*</span> when you want to form a deal with someone <br> 🧱 Use <span class='command'>i!agree <span class='person'>@other_person</span></span> if both parties agree with the deal. You both have to use this command. If you DON'T agree with the terms, you can <span class='command'>i!reject</span> instead. <br> 🧱 If both parties agree, the deal will be posted as a receipt. <br> 🧱 Use <span class='command'>i!done <span class='person'>@other_person</span></span> when you are done with your trade and everyone delivered their part of the deal to finish the transaction.",
  queue: "",
  template: "i!trade <span class='person'>@other_person</span> *terms of your deal* <br><br> i!agree <span class='person'>@other_person</span> <br><br> i!done <span class='person'>@other_person</span>",
  example: "i!trade <span class='person'>@Peter from PartyPants</span> My black street lamp for your white street lamp <br><br> i!agree <span class='person'>@Peter from PartyPants</span> <br><br> i!done <span class='person'>@Peter from PartyPants</span>",
  commands: "<span class='command'>i!mytrades</span> <br> This will show you all your receipts for your convenience and also all your open trades with people."
)

nooklings = Bot.create!(
  name: "Timmy & Tommy",
  avatar: "https://cdn.discordapp.com/attachments/727264651162681505/728199007482150962/Bot_Nooklings_Head_Transparent.png",
  intro: "A bot used to host catalogue parties and catalogue swaps!",
  host: "🍃 Use <span class='command'>i!catalogue party/swap dodo queue_cap</span> to start a catalogue event. Where dodo is your dodo code, queue_cap is the maximum of people visiting in total. Timmy & Tommy will make sure people get the dodo code when they join the queue. <br> 🍃 Use <span class='command'>i!instructions *text instructions* *picture if you want*</span> to add some instructions to your catalogue post. <br> 🍃 Use <span class='command'>i!dodo dodo</span> if you need to update or edit your dodo code. <br> 🍃 Use <span class='command'>i!close</span> to cutoff your queue to make sure you don't get any further visitors. <br> 🍃 Use <span class='command'>i!delete</span> when you’re done hosting to delete your post.",
  queue: "🍃 Join the queue for a catalogue party by reacting with the blob emoji. You will get the dodo code in a DM once it's your turn. <br> 🍃 When you've finished your visit make sure to un-react on the blob emoji to make space for the next one in line! <br> 🍃 Make sure to read the post describtion carefully as some hosts provides needed information there.",
  template: "i!catalogue party/swap dodo queue_cap <br><br> i!instructions *text instructions* *picture if you want*",
  example: "i!catalogue party F0WM7 5 <br><br> i!instructions I have the full white rattan set available to catalogue",
  commands: "<span class='command'>i!boot <span class='person'>@person to remove</span></span> <br> If someone forgets to un-react the host can remove them manually from the queue."
)

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

########################################################

puts "Creating infographics"

########################################################

puts "Friendship guide"

Infographic.create!(
  title: "Friendship Guide: Tiers (1 of 7)",
  image_url: "https://yuexr.github.io/img/fs/1.png",
  tags: "friendship, interactions, new friends, good friends, best friends, gifts, points, wrapped"
)

Infographic.create!(
  title: "Friendship Guide: Points (2 of 7)",
  image_url: "https://yuexr.github.io/img/fs/2.png",
  tags: "friendship, interactions, new friends, good friends, best friends, points, wrapped"
)

Infographic.create!(
  title: "Friendship Guide: Daily Gifts (3 of 7)",
  image_url: "https://yuexr.github.io/img/fs/3.png",
  tags: "friendship, interactions, new friends, good friends, best friends, gifts, points, wrapped"
)

Infographic.create!(
  title: "Friendship Guide: Birthday Gifts (4 of 7)",
  image_url: "https://yuexr.github.io/img/fs/4.png",
  tags: "friendship, interactions, new friends, good friends, best friends, gifts, points, wrapped, birthday"
)

Infographic.create!(
  title: "Friendship Guide: Quest I (5 of 7)",
  image_url: "https://yuexr.github.io/img/fs/5.png",
  tags: "friendship, interactions, new friends, good friends, best friends, points, wrapped, quest, sickness, treasure hunt"
)

Infographic.create!(
  title: "Friendship Guide: Quest II (6 of 7)",
  image_url: "https://yuexr.github.io/img/fs/6.png",
  tags: "friendship, interactions, new friends, good friends, best friends, points, wrapped, bug, fish, lost item, delivery"
)

Infographic.create!(
  title: "Friendship Guide: Road to BFFs! (7 of 7)",
  image_url: "https://yuexr.github.io/img/fs/7.png",
  tags: "friendship, interactions, new friends, good friends, best friends, points, wrapped, villager photo"
)

########################################################

puts "Reactions"

Infographic.create!(
  title: "Learning Reactions",
  image_url: "https://yuexr.github.io/img/reactions.png",
  tags: "reactions, reaction, speech bubble"
)

########################################################

puts "Gifting guide"

Infographic.create!(
  title: "Villager Gifting Guide: Daily Gifts I (1 of 4)",
  image_url: "https://yuexr.github.io/img/gift/01.png",
  tags: "gifts, friendship"
)

Infographic.create!(
  title: "Villager Gifting Guide: Daily Gifts II (2 of 4)",
  image_url: "https://yuexr.github.io/img/gift/02.png",
  tags: "gifts, friendship, wrapping, inventory, wrapped bells"
)

Infographic.create!(
  title: "Villager Gifting Guide: Birthday Gifts (3 of 4)",
  image_url: "https://yuexr.github.io/img/gift/03.png",
  tags: "gifts, friendship, wrapping, fruit, birthday, turnip, cake"
)

Infographic.create!(
  title: "Villager Gifting Guide: Extra Gifting Tips (4 of 4)",
  image_url: "https://yuexr.github.io/img/gift/04.png",
  tags: "gifts, friendship, wrapping, fruit, fruit stack, framed photo, safe gifting"
)

########################################################

puts "Move-Out handbook"

Infographic.create!(
  title: "Move-Out Handbook: Getting Started (1 of 7)",
  image_url: "https://yuexr.github.io/img/mo/1.png",
  tags: "move-out, move out, moving out, campsite, time travelling, time-travelling"
)

Infographic.create!(
  title: "Move-Out Handbook: Island Move-Out (2 of 7)",
  image_url: "https://yuexr.github.io/img/mo/2.png",
  tags: "natural move-out, move out, moving out, in boxes, adopt, thought bubble"
)

Infographic.create!(
  title: "Move-Out Handbook: Villager Ask Chance (3 of 7)",
  image_url: "https://yuexr.github.io/img/mo/3.png",
  tags: "natural move-out, move out, moving out, friendship"
)

Infographic.create!(
  title: "Move-Out Handbook: Regular Campers (4 of 7)",
  image_url: "https://yuexr.github.io/img/mo/4.png",
  tags: "natural move-out, move out, moving out, campsite, timeline, adopt, in boxes"
)

Infographic.create!(
  title: "Move-Out Handbook: Amiibo Campers (5 of 7)",
  image_url: "https://yuexr.github.io/img/mo/5.png",
  tags: "natural move-out, move out, moving out, campsite, amiibo, diy, in boxes"
)

Infographic.create!(
  title: "Move-Out Handbook: Move-Out Method (6 of 7)",
  image_url: "https://yuexr.github.io/img/mo/6.png",
  tags: "natural move-out, move out, moving out, time travelling, time-travelling, empty plot"
)

Infographic.create!(
  title: "Move-Out Handbook: Additional Notes (7 of 7)",
  image_url: "https://yuexr.github.io/img/mo/7.png",
  tags: "natural move-out, move out, moving out, in boxes, friendship"
)

########################################################

puts "Flower Guide"

Infographic.create!(
  title: "Gardening 101",
  image_url: "https://yuexr.github.io/img/gardening101.png",
  tags: "flower growth, water, genotypes, breeding, cloning"
)

Infographic.create!(
  title: "Visitor Watering",
  image_url: "https://yuexr.github.io/img/watering.png",
  tags: "water, breeding, cloning, golden sparkles"
)

Infographic.create!(
  title: "Golden Rose Guide",
  image_url: "https://yuexr.github.io/img/goldrose.png",
  tags: "layout, gold, golden, rose, gold flag, golden watering can"
)

Infographic.create!(
  title: "Simple Hybrid Cloning Layout",
  image_url: "https://yuexr.github.io/img/cloning.png",
  tags: "hybrids, layout, cloning"
)

########################################################

puts "Wedding Guide"

Infographic.create!(
  title: "Wedding Season",
  image_url: "https://yuexr.github.io/img/wedding.png",
  tags: "wedding, photoshoot, heart crystals"
)

########################################################

puts "Bug-Off and Fishing Tourney"

Infographic.create!(
  title: "Bug-Off (1 of 2)",
  image_url: "https://yuexr.github.io/img/bugoff1.png",
  tags: "bug, bug-off, bug off, prizes, trophies"
)

Infographic.create!(
  title: "Bug-Off (2 of 2)",
  image_url: "https://yuexr.github.io/img/bugoff2.png",
  tags: "bug, bug-off, bug off, prizes, trophies"
)

Infographic.create!(
  title: "Fishing Tourney (1 of 2)",
  image_url: "https://yuexr.github.io/img/fishtourney.png",
  tags: "fish, fishing tournament, fishing tourney, prizes, trophies"
)

Infographic.create!(
  title: "Fishing Tourney (2 of 2)",
  image_url: "https://yuexr.github.io/img/fishtourney2.png",
  tags: "fish, fishing tournament, fishing tourney, prizes, trophies"
)

########################################################

puts "New Firework Update"

Infographic.create!(
  title: "Fireworks Items",
  image_url: "https://yuexr.github.io/img/hanabi.png",
  tags: "fireworks, shows, boppers, balloons"
)

Infographic.create!(
  title: "Seasonal Items",
  image_url: "https://yuexr.github.io/img/nookseasonal14.png",
  tags: "qixi festival, hikoboshi, orihime, grape festival, cowboy festival, mid-autumn festival, moon-viewing day"
)

Infographic.create!(
  title: "King Tut Mask",
  image_url: "https://yuexr.github.io/img/kingtut.png",
  tags: "king tut mask, gold nugget, hit rocks"
)

Infographic.create!(
  title: "Repoting Dreams",
  image_url: "https://yuexr.github.io/img/dreamreport1.png",
  tags: "dream code, dreams, report"
)

Infographic.create!(
  title: "Repoting Dreams FAQ I",
  image_url: "https://yuexr.github.io/img/dreamreport_faq1.png",
  tags: "dream code, dreams, report"
)

Infographic.create!(
  title: "Repoting Dreams FAQ II",
  image_url: "https://yuexr.github.io/img/dreamreport_faq2.png",
  tags: "dream code, dreams, report"
)

########################################################

puts "Summer update"

Infographic.create!(
  title: "Diving Gear",
  image_url: "https://yuexr.github.io/img/divinggear.png",
  tags: "wet suits, snorkel, diving"
)

Infographic.create!(
  title: "Pascal FAQ",
  image_url: "https://yuexr.github.io/img/pascal.png",
  tags: "pascal, scallops, mermaid, pearl"
)

Infographic.create!(
  title: "Mermaid Clothing",
  image_url: "https://yuexr.github.io/img/mermaidclothing.png",
  tags: "mermaid, princess, clothing"
)

Infographic.create!(
  title: "Mermaid DIY Set",
  image_url: "https://yuexr.github.io/img/mermaidset.png",
  tags: "mermaid, furniture, diy"
)

Infographic.create!(
  title: "Gullivarrr's Quest",
  image_url: "https://yuexr.github.io/img/gullivarrr.png",
  tags: "gullivarrr, pirate, treasure, communicator"
)

Infographic.create!(
  title: "Pirate Loot",
  image_url: "https://yuexr.github.io/img/pirate.png",
  tags: "gullivarrr, pirate, treasure, communicator"
)

Infographic.create!(
  title: "Sea Creatures",
  image_url: "https://yuexr.github.io/img/seacreatures.png",
  tags: "sea critters, diving, ocean, critterpedia"
)

########################################################

puts "NPC visits"

Infographic.create!(
  title: "NPC Schedule I",
  image_url: "https://yuexr.github.io/img/npcskd.png",
  tags: "npc, leif, saharah, kicks, label, gullivarrr, gulliver, CJ, flick, redd"
)

Infographic.create!(
  title: "NPC Schedule II",
  image_url: "https://yuexr.github.io/img/npcskd_tldr.png",
  tags: "npc, leif, saharah, kicks, label, gullivarrr, gulliver, CJ, flick, redd, wisp, celeste, KK slider, pascal, daisy mae"
)

########################################################

puts "Stars and more"

Infographic.create!(
  title: "All About Stars: Meteor Showers (1 of 2)",
  image_url: "https://yuexr.github.io/img/starshower.png",
  tags: "weather, heavy meteor shower, light shower, celeste, wishes"
)

Infographic.create!(
  title: "All About Stars: Star Fragments (2 of 2)",
  image_url: "https://yuexr.github.io/img/starfrag.png",
  tags: "meteor shower, star fragments, shooting stars, wishes"
)

########################################################

puts "Weather Seed"

Infographic.create!(
  title: "MeteoNook",
  image_url: "https://yuexr.github.io/img/meteonook.png",
  tags: "weather seed, weather data"
)

########################################################

puts "Recycle Bin"

Infographic.create!(
  title: "Recycle Box",
  image_url: "https://yuexr.github.io/img/recycle.png",
  tags: "clean up, recycle box"
)

########################################################

puts "Mom's items"

Infographic.create!(
  title: "Mom's Items I",
  image_url: "https://cdn.discordapp.com/attachments/727901653390589954/728249366233743400/mom1.png",
  tags: "mom's items, mom"
)

Infographic.create!(
  title: "Mom's Items II",
  image_url: "https://cdn.discordapp.com/attachments/727901653390589954/728249372709748776/mom2.png",
  tags: "mom's items, mom"
)

########################################################

puts "Moving in"

Infographic.create!(
  title: "Move In Mechanics",
  image_url: "https://cdn.discordapp.com/attachments/727901653390589954/728646436794794075/image0.png",
  tags: "moving in, mystery island, campsite"
)

########################################################

puts "Nook Mile Items"

Infographic.create!(
  title: "Nook Mile Items Colour Coding",
  image_url: "https://cdn.discordapp.com/attachments/727901653390589954/728647962607222786/image0.jpg",
  tags: "nook mile item, nmi"
)


########################################################

puts "Flowers"

Infographic.create!(
  title: "Flower & Bush Colour Circle",
  image_url: "https://cdn.discordapp.com/attachments/727901653390589954/730574360636817428/flowerchart.png",
  tags: "flowers, bloom, season, colour, color"
)

Infographic.create!(
  title: "The Mystery of The Lily",
  image_url: "https://cdn.discordapp.com/attachments/727901653390589954/742107756819120128/LotV.png",
  tags: "lily of the valley, five stars"
)

Infographic.create!(
  title: "Rock Garden 101 I",
  image_url: "https://cdn.discordapp.com/attachments/727901653390589954/734925729027850280/grock_01.png",
  tags: "rocks, rock garden, mannequins"
)

Infographic.create!(
  title: "Rock Garden 101 II",
  image_url: "https://cdn.discordapp.com/attachments/727901653390589954/734925731024339004/grock_02.png",
  tags: "rocks, rock garden, mannequins, toilet"
)

Infographic.create!(
  title: "Scallop Finding Tips",
  image_url: "https://cdn.discordapp.com/attachments/727901653390589954/731354836226015282/image1.jpg",
  tags: "scallops, bubbles, shadow size"
)

Infographic.create!(
  title: "Pearl Finding Tips",
  image_url: "https://cdn.discordapp.com/attachments/727901653390589954/731354836007911485/image0.jpg",
  tags: "pearls, bubbles, shadow size"
)

puts "Done creating infographics"

