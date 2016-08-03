local function do_keyboard_robot()
    local keyboard = {}
    keyboard.inline_keyboard = {
		{
    					{text = 'در حال اپدیت ℹ🏾', callback_data = '!sha'},
    					},
                                        {
	    {text = '🔙 برگشت', callback_data = '!home'}
        }
    }
    return keyboard
end
local function do_keyboard_home()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '🌐 محل تبلیغ شما', url = 'http://telegram.me/arian721'},
    	},
            {
    		{text = '📡 کانال های فان', callback_data = '!channel'},
        },
	    {
	        {text = '🔸دیگر', callback_data = '!robot'}
        }
    }
    return keyboard
end

local function do_keyboard_startme()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '🙃👉اینجا بزن! 👈🙃', url = 'https://telegram.me/'..bot.username}
	    }
    }
    return keyboard
end
local function do_keyboard_channel()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '📲 اپ رویدس', url = 'https://telegram.me/AppRoids'},
	    },
	{
	        		{text = '🔗 تی جی لند', url = 'https://telegram.me/TgLand'},

    },
		{
	    {text = '🔙 برگشت', callback_data = '!home'}
        }
    
    }
    return keyboard
end

    if msg.cb then
        local query = blocks[1]
        local msg_id = msg.message_id
        local text
        if query == 'channel' then
            local text = '📡 *کانال ها*'
            local keyboard = do_keyboard_channel()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'robot' then
            local text = [[🔸دیگر
_اطلاعات دیگری در مورد ربات _( 😃]]
            local keyboard = do_keyboard_robot()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'home' then
            local text = [[🔥 بخش _اطلاعات دیگر_ ربات کیوورد]]
            local keyboard = do_keyboard_home()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
    end

end

return {
	action = action,
	triggers = {
	    '^/(start)@KeyWordRobot$',
	    '^/(start)$',
	    '^###cb:!(home)',
	    '^###cb:!(channel)',
	    '^###cb:!(robot)',

    }
}
