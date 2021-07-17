Config = {}

Config.Webhook = 'YOUR_MAIN_WEBHOOK_HERE' -- Copy your discord webhook here, if you dont know how you should ask support from the discord server you got it from

Config.Picture = 'https://i.imgur.com/LILqskd.png' -- The picture that will show up next to all of the logs, the standard is a discord logo
Config.Picture2 = 'https://i.imgur.com/LILqskd.png' -- Small pictore at the bottem of the embed

Config.Author = 'Sahbes'       -- This is the name of author that is on the bottem of your discord log, standard is Sahbes


Config.Starting = true         -- true = log when the server is started, false = don't do anything

Config.Stopping = true         -- true = log when the server is stopped, false = don't do anything

Config.Connecting = true       -- true = log when a player is connecting, false = don't do anything

Config.Disconnecting = true    -- true = log when a player is disconnecting, false = don't do anything


Config.Webhooks = {
        [0] = { link = 'YOUR_FIRST_WEBHOOK_HERE'}, 
        [1] = { link = 'YOUR_SECOND_WEBHOOK_HERE'}, 
        [2] = { link = 'YOUR_THIRD_WEBHOOK_HERE'},  
} 



-- If you want more extra webhooks you can just copy above and paste te under (don't forget to change the number at the beginning of the line) 

-- If you want to change the color of the export / embed you can take a look at this website (https://gist.github.com/thomasbnt/b6f455e2c7d743b796917fa3c205f812)

-- THE EXPORT IS VERY SIMPLE         exports['MB_DCLogs']:sahbesLog( 'NICKNAME FOR THE BOT', 'YOUR TEXT THAT NEEDS TO BE LOGGED, YOU CAN COMBINE IT WITH NAMES OR WATHEVER', COLOR, WEBHOOK ID (NIL IS THE STANDARD WEBHOOK))



-- EXAMPLES       exports['MB_DCLogs']:sahbesLog( 'Bag For Weapon', 'this player tried to pull a weapon without wearing a bag!', 7419530, 1)

-- THIS WILL EXPORT AN EMBED WITH THE NICNNAME 'Bag For Weapon', THE TEXT 'this player tried to...', COLOR DARK_PURPLE, AND IT WILL BE SENT TO THE LINK WITH ID 1


-- UPDATE! If you are using a custom webhook (with an ID) it automatically adds the steam name as the title