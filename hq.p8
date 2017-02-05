pico-8 cartridge // http://www.pico-8.com
version 8
__lua__

function get_mission(num)
	local l_mission = {}
	if num == 1 then 
		l_mission = {
			starting_point = {2,20},
			door_locations = {
				{4,5},
				{6,3},
				{11,3},
				{4,11},
				{9,11},
				{1,15},
				{13,17},
				{11,20},
				{3,23},
				{8,23},
				{18,20},
				{20,12}
			},
			enemies = { --x, y, type
				{3,3,2},
				{7,21,1}

			},
			rocks = {
				{0,1},
				{18,24},
				{22,12},
				{16,7},
				{17,7}
			},
			chest_data = { --x,y,type,amount/strength
				{2, 22, 2, 1},
				{4, 22, 2, 1},
				{22, 22, 2, 1},
				{21, 22, 2, 1}
			},
			end_tile = {6,18}
		}
	elseif num == 2 then 
		l_mission = {
			starting_point = {2,20},
			door_locations = {
				{4,5},
				{6,3},
				{11,3},
				{4,11},
				{9,11},
				{1,15},
				{13,17},
				{11,20},
				{3,23},
				{8,23},
				{18,20},
				{20,12}
			},
			enemies = { --x, y, type
				{3,3,2},
				{4,3,2},
				{8,2,3},
				{8,3,6},
				{8,4,3},
				{12,4,2},
				{12,5,6},
				{13,5,2},
				{4,8,1},
				{8,9,1},
				{9,9,1},
				{0,17,1},
				{3,15,1},
				{3,16,4},
				{9,19,4},
				{10,20,4},
				{13,19,1},
				{13,21,1}, 
				{16,24,4},
				{20,21,4}, 
				{21,20,4}, 
				{22,19,3},
				{15,14,3}, 
				{18,14,3}, 
				{18,11,3},
				{16,11,8}
			},
			rocks = {
				{0,1},
				{18,24},
				{22,12},
				{16,7},
				{17,7}
			},
			chest_data = { --x,y,type,amount/strength
				{2, 22, 2, 1},
				{4, 22, 2, 1},
				{22, 22, 2, 1},
				{21, 22, 2, 1}
			},
			end_tile = {20,18}
		}
	end
	return l_mission
end

--pico 8 functions

function _init()
	app_state = main_menu_state
	animator = 5
	actors={}

	enemy_type = {}
 
	--name, hp, ap
	add(enemy_type, {"goblin",10,2,1,1,1, 16})
	add(enemy_type, {"skeleton",6,2,2,1,0, 17})
	add(enemy_type, {"zombie",5,2,3,1,0,18})
	add(enemy_type, {"orc",8,3,2,1,2,19})
	add(enemy_type, {"fimir",6,3,3,2,3,20})
	add(enemy_type, {"mummy",4,3,4,2,0,21})
	add(enemy_type, {"chaos warrior",7,4,4,3,3,22})
	add(enemy_type, {"gargoyle",6,4,5,3,4,23})

	wallid = 32
	actor_index=1
	map_w=34
	map_h=25
	mission_num = 1
	cam_cache = {0,0}

	move_or_action_menu = {}
	move_or_action_menu[1] = "         move        "
	move_or_action_menu[2] = "        attack       "		
	move_or_action_menu[3] = "       use item      "
	move_or_action_menu[4] = "     player stats    "
	move_or_action_menu[5] = "     finish turn     "

	timer=0

	rooms={}
	init_rooms_array()
end

function _update()
	app_state:update()
end

function _draw()
	cls()

	animator += 1
	if (animator > 7) animator = 5

	app_state:draw()
end

--app states
------------------------------------------
main_menu_state={
	selection = 1,

	update = function()
		if ( btnp(2) ) then --up
			main_menu_state.selection += 1
		elseif ( btnp(3) ) then --down	
			main_menu_state.selection -= 1
		elseif btnp(5) then 
			if (main_menu_state.selection == 1) then 
				app_state = instructions
			end
			if (main_menu_state.selection == 2) then 
				app_state = character_select_state
			end		
		end	

		if (main_menu_state.selection > 2) main_menu_state.selection = 1
		if (main_menu_state.selection < 1) main_menu_state.selection = 2
	end,

	draw = function()
		print("---------------------------------", 0, 10, 6)
		print("---------------------------------", 0, 20)
		print("-----------pico quest------------", 0, 30)
		print("---------------------------------", 0, 40)
		print("---------------------------------", 0, 50)
		if ( main_menu_state.selection == 1) then
			print("instructions", 40, 90, animator)
			print("start", 55, 100, 6)
		elseif main_menu_state.selection == 2 then 
			print("instructions", 40, 90, 6)
			print("start", 55, 100, animator)
		end
	end
}

character_select_state={
	selection = 1,
	player_num = 1,

	player_types = {
			{"barbarian", "strong in combat", "no magic ability"},
			{"elf", "a good fighter", "some magic ability"},
			{"wizard", "weak defense and combat", "strong magic"}
	},

	update = function()
		if (btnp(0)) character_select_state.selection = max(1, character_select_state.selection - 1)
		if (btnp(1)) character_select_state.selection = min(3, character_select_state.selection + 1)
		if (btnp(5)) then
			--init players and enemies
			local p = player:new()
			p:init(character_select_state.player_types[character_select_state.selection][1], character_select_state.player_num)
			actors[character_select_state.player_num] = p
			character_select_state.player_num += 1

			if character_select_state.player_num > 2 then
				game_state:init()
				app_state = game_state
			end
		end
	end,

	draw = function()
		rectfill(0,0,128,128, 4)
		
		print("player " .. character_select_state.player_num, 64 - 2 * 8, 60, 6)
		
		local p_type = character_select_state.player_types[character_select_state.selection]
		local y_pos = 70

		for i=1, #p_type do
			print(p_type[i], 64 - 2 * #p_type[i], y_pos, 6)
			y_pos += 10
		end

	end
}

game_state={
	init=function()
		init_mission(mission_num)
	end,

	update=function()
		if gui:active_messages() then 
			gui:update()
		else
			--update only the current actor
			actors[actor_index]:update()
		end
	end,

	draw=function()
		for rm in all(rooms) do
			rm:draw()
		end	
		
		--draw all actors
		for ac in all(actors) do
			ac:draw()
		end

		--draw all chests
		for ch in all(chests) do
			ch:draw()
		end
		
		gui:draw()
	end
}

player_stats_state = {
	update = function()
		if (btnp(4)) app_state = game_state
	end,

	draw = function()
		camera()
		rectfill(0,0,128,128, 4)
		local p = actors[actor_index]
		print("name: " .. p.name, 10, 10, 7)
		print("att: " .. p.ap, 10, 20, 7)
		print("def: " .. p.dp, 50, 20, 7)
		print("body: " .. p.bp, 90, 20, 7)
		print("mind: " .. p.mp, 10, 30, 7)
		print("gold: " .. p.g, 50, 30, 7)
		print("items:", 10, 40, 7)
		local y_offset = 50
		for it in all(p.items) do
			print(item_num_to_string(it), 10, y_offset, 7)
			y_offset += 10
		end
		restore_camera()
	end
}

item_select_state = {
	update = function ()
		local p = actors[actor_index]
		if (btnp(2)) p.item_selection -= 1
		if (btnp(3)) p.item_selection += 1
		if (p.item_selection < 1) p.item_selection = #p.items
		if (p.item_selection > #p.items) p.item_selection = 1
		if (btnp(4)) then
			app_state = game_state
		end
		if (btnp(5)) then
			--get item type
			local item = p.items[p.item_selection]
			if item == 1 then -- potion
				local old_bp = p.bp			
				p.bp += 4
				if(p.bp > p.max_bp) p.bp = p.max_bp
				gui.add_message("used potion of heal")
				gui.add_message(p.bp - old_bp .. " body restored" )
			end
			del(p.items, p.items[p.item_selection])
			app_state = game_state
		end
	end,

	draw = function()
		local p = actors[actor_index]		
		camera()
		rectfill(0,0,128,128, 4)
		print("items:", 10, 40, 7)
		local y_offset = 50
		
		for num=1, #p.items do
			if p.item_selection == num then 
				print("*" .. item_num_to_string(p.items[num]) .. "*", 10, y_offset, 7)
			else
				print(item_num_to_string(p.items[num]), 10, y_offset, 7)
			end
			y_offset += 10
		end	
		restore_camera()	
	end
}

--gui
--------------------------------------

gui = {
	messages = {},
	
	add_message = function (msg, callback)
		local gui_msg = {msg, callback}
		add(gui.messages, gui_msg)
	end,

	active_messages = function()
		return #gui.messages > 0
	end,

	update = function()
		if #gui.messages > 0 then
			if (btnp(5) or btnp(0) or btnp(1) or btnp(2) or btnp(3)) then 
				if gui.messages[1][2] != nil then
					gui.messages[1][2]()
				end
				pop(gui.messages)
			end
		end
	end,

	draw = function()
		camera()
		rectfill(0,117,128,128, 4)
		local p = actors[actor_index]

		if #gui.messages > 0 then
			print(gui.messages[1][1] .. "\x97", 10, 120, 7)		

		elseif actor_index < 3 then --draw player gui
					
			if p.state == "move" then	
				print("       moves left " .. p.ml, 10, 120, 7)		
			elseif p.state == "move_or_action" then
					print("\x8b" .. move_or_action_menu[p.menu_selection] .. "\x91", 15, 120, 7)			
			elseif p.state == "attack_menu" then			
				print(" \x8bselect enemy\x91   attack\x97", 5, 120, 7)			
				--get cell to hilight
				local en = p.adjacent_enemies[p.attack_selection]			
				restore_camera()
				rect(en.x * 8, en.y * 8, en.x * 8 + 7, en.y * 8 + 7, animator)
			elseif p.state == "give_menu" then			
				print(" \x8b" .. item_num_to_string(p.items[p.item_selection]) .."\x91 give\x97", 5, 120, 7)			
				--get cell to hilight
				local mt = p:get_mate()
				restore_camera()
				rect(mt.x * 8, mt.y * 8, mt.x * 8 + 7, mt.y * 8 + 7, animator)
			end
		end

		restore_camera()
	end
}

--chest class
-------------------------
chest = {}

function chest:new(o)
	o = o or {}   -- create object if user does not provide one
	setmetatable(o, self)
	self.__index = self
	return o
end

function chest:init(x, y, chest_type, amount)
	self.x = x
	self.y = y
	self.chest_type = chest_type 
	self.amount = amount
	self.opened = false
end

function chest:draw()
	local sprite = 51
	if self.opened == true then
		sprite = 52
	end
	spr(sprite, self.x * 8, self.y * 8)
end

--room class
-------------------------
room={}

function room:new(o)
	o = o or {}   -- create object if user does not provide one
	setmetatable(o, self)
	self.__index = self
	return o
end

function room:init(x, y, w, h,hall,vis)
	if hall == nil then hall = false end

	self.x = x
	self.y = y
	self.w = w
	self.h = h

	if hall == false then
		--include the walls as well. 
		self.x -= 1 
		self.y -= 1
		self.w += 2
		self.h += 2
	end

	if vis == nil then 
		self.visible = false
	else
		self.visible = vis
	end
end

function room:draw()
	if (self.visible) then
		map(self.x, self.y, self.x*8, self.y*8, self.w, self.h)
	end
end

function init_rooms_array()
	
	for i=1,34 do
		add(rooms, room:new())
	end

	rooms[1]:init(2,2,4,3)
	rooms[2]:init(7,2,4,3)
	rooms[3]:init(12,2,3,5)
	rooms[3]:init(12,2,3,5)
	rooms[4]:init(2,6,4,5)
	rooms[5]:init(7,6,4,5)
	rooms[6]:init(19,2,3,5)
	rooms[7]:init(23,2,4,4)
	rooms[8]:init(28,2,4,4)
	rooms[9]:init(23,7,4,4)
	rooms[10]:init(28,7,4,4)
	rooms[11]:init(14,10,6,5)
	rooms[12]:init(2,14,3,4)
	rooms[13]:init(6,14,2,3)
	rooms[14]:init(9,14,2,3)
	rooms[15]:init(2,19,3,4, false, true)
	rooms[16]:init(6,18,5,5)
	rooms[17]:init(12,18,3,5)
	rooms[18]:init(23,14,4,4)
	rooms[19]:init(28,14,4,4)
	rooms[20]:init(19,18,4,5)
	rooms[21]:init(24,19,3,4)
	rooms[22]:init(28,19,4,4)
	rooms[23]:init(0,0,34,2,true)
	rooms[24]:init(32,0,2,25,true)
	rooms[25]:init(0,23,34,2,true)
	rooms[26]:init(0,0,2,25,true)
	rooms[27]:init(15,0,4,9,true)
	rooms[28]:init(21,11,13,3,true)
	rooms[29]:init(15,16,4,9,true)
	rooms[30]:init(0,11,13,3,true)
	rooms[31]:init(11,7,12,3,true)
	rooms[32]:init(20,7,3,11,true)
	rooms[33]:init(11,15,12,3,true)
	rooms[34]:init(11,7,3,11,true)

end

--player class
-------------------------
player = {}

--player methods
function player:new (o)
	o = o or {}   -- create object if user does not provide one
	setmetatable(o, self)
	self.__index = self
	return o
end

function player:init(type, index)
	--todo each player type should have a different sprite	
	self.index = index

	printh(type)

	if type == "barbarian" then
		printh("sprite 0")
		self.sprite = 0
		self.ap = 3
		self.dp = 2
		self.max_bp = 8
		self.mp = 0
	elseif type == "elf" then
		printh("sprite 1")
		self.sprite = 1
		self.ap = 2
		self.dp = 2
		self.max_bp = 6
		self.mp = 4
	elseif type == "wizard" then
		printh("sprite 2")
		self.sprite = 2
		self.ap = 1
		self.dp = 2
		self.max_bp = 4
		self.mp = 8
	end

	self.ml = 0
	self.x = 0
	self.y = 0
	self.menu_selection = 1
	self.item_selection = 1
	self.state = "move_or_action"
	self.move_used = false
	self.action_used = false
	self.dice_rolled = false

	self.name = type
	self.type = type
	
	self.human = true
	self.alive = true
	self.g = 0
	self.items = {}
	self.bp = self.max_bp
end

function player:update()
	
	--user should be able to bail from any state into main menu
	if (btnp(4)) then
		if self.state == "move_or_action" then 
			self.state = "move"
		elseif self.state != "move_or_action" then 
			self.state = "move_or_action"
		end
	end

	if self.state == "move" then
		self:move()
	elseif self.state == "move_or_action" then
		self:do_move_or_action_menu()
	elseif self.state == "attack_menu" then
		self:do_attack_menu()
	elseif self.state == "give_menu" then
		self:do_give_menu()		
	end	
end

function player:do_give_menu()
	if (btnp(5)) then
		
		local mate = self:get_mate()

		--copy the item to our mate
		add(mate.items, self.items[self.item_selection])

		--remove the item from ourselves
		del(self.items, self.item_selection)
	end
end

function player:rollmovementdice()
	self.dice_rolled = true
	return flr(rnd(6)) + flr(rnd(6)) + 2
end

function player:draw()	
	if self.index == 2 then
		pal(5, 13, 0)
	end

	--centre camera 
	if actor_index == self.index then
		set_camera(self.x * 8 - 64, self.y * 8 - 64)
	end

	spr(self.sprite,self.x * 8, self.y * 8)

	if actor_index == self.index then
		restore_camera()	
	end

	pal()

end

function player:move()

	if self.dice_rolled == false then
		self.ml = player:rollmovementdice()
		self.dice = self.ml
		gui.add_message("player rolled: " .. self.ml)	
		self.dice_rolled = true		
		do return end
	end

	local prevx = self.x
	local prevy = self.y
	local heading = {x=0, y=0}
	if self.ml > 0 then 
		if (btnp(0)) heading.x -= 1
		if (btnp(1)) heading.x += 1
		if (btnp(2)) heading.y -= 1
		if (btnp(3)) heading.y += 1	
	end

	self.x += heading.x
	self.y += heading.y

	if (btnp(5)) then 
		local ch_opened = false --check for enemies if no chest was opened
		do
			local ch = closed_chest_at_surrounding_location(self.x, self.y)
			if ( ch != nil and ch.opened == false) then 		
				if ch.chest_type == 1 then --gold
					--display what is in it through the gui
					gui.add_message("you found " .. ch.amount .. " gold")

					--add the contents to the player's inventory	
					self.g += ch.amount
				elseif ch.chest_type == 2 then --item (ch.amount gives us the type)
					--
					gui.add_message("you found " .. item_num_to_string(ch.amount))

					add(self.items, ch.amount)

				end
				
				--open the chest sprite
				ch.opened = true
				ch_opened = true
			end
		end

		if ch_opened == false and self.action_used ==false then --check surrounding squares for enemies
			self.adjacent_enemies = self:get_adjacent_enemies()
			if #self.adjacent_enemies > 0 then 
				for en in all(self.adjacent_enemies) do 
						printh(en.name)
				end
				self.state = "attack_menu"
				self.attack_selection = 1
			end
		end

		--check surrounding location for mate. open give menu
		if self.state != "attack_menu" and ch_opened == false and self:is_player_adjacent() == true then
			self.state = "give_menu"

		elseif self.state != "attack_menu" and ch_opened == false and self.ml == 0 then
			self.state = "move_or_action"
			self.menu_selection = 5
		end
	end

	if self:check_simple_collision() == true then
		self.x = prevx
		self.y = prevy
	end
		
	--check collision with doors
	if ( mget(self.x, self.y) == 48 )	then
		mset(self.x, self.y, 49)
	end

	--check collision with end tile
	--printh(fget(mget(self.x, self.y)))

	--check collision with other player
	local mate = self:get_mate()
	if mate.x == self.x and mate.y == self.y and mate.alive == true then
		self.x += heading.x
		self.y += heading.y

		--do we have at least 2 moves left?
		if self.ml < 2 or self:check_simple_collision() == true then
			gui.add_message("can not pass")
			self.x = prevx
			self.y = prevy

		else --success
			gui.add_message("passed player")
			self.ml -= 1
		end
	end
		

	--check collision with map edge
	if self.x < 0 or self.x >= map_w or self. y < 0 or self.y >= map_h then
		self.x = prevx
		self.y = prevy
	end
 
	 --decrement movesleft if player moved
	if self.x ~= prevx or self.y ~= prevy then
		self.ml -= 1
		reveal_rooms(self.x, self.y)
	end	
end

function player:check_simple_collision()
	local collided = false

 	--check collision with walls, rocks and chests
	if ( mget(self.x, self.y) == wallid or mget(self.x, self.y) == 50 or chest_at_location(self.x, self.y) != nil)	then
		collided = true
	end

	--check collision with enemies
	for i=3, #actors do
		if actors[i].alive == true then
			if self.x == actors[i].x and self.y == actors[i].y then
				collided = true
			end
		end
	end

	return collided
end

function player:get_mate()
	local mate_index = 2
	if (self.index == 2) mate_index = 1
	return actors[mate_index]
end

function player:do_move_or_action_menu()

	if (btnp(0)) self.menu_selection -= 1
	if (btnp(1)) self.menu_selection += 1
	if self.menu_selection < 1 then self.menu_selection = #move_or_action_menu end
	if self.menu_selection > #move_or_action_menu then self.menu_selection = 1 end

	if (btnp(5)) then
		
		if self.menu_selection == 1 then --move						
			self.state = "move"
		elseif self.menu_selection == 2 then --attack						
			if self.action_used == false then
				--check if enemy is adjacent todo this shouldnt be called every frame
				self.adjacent_enemies = self:get_adjacent_enemies()
				if (#self.adjacent_enemies == 0) gui.add_message("no enemies to attack")
				if (#self.adjacent_enemies > 0) then
					for en in all(self.adjacent_enemies) do 
						printh(en.name)
					end
					self.state = "attack_menu"
					self.attack_selection = 1
				end
			else
				gui.add_message("action already performed")
			end

		elseif self.menu_selection == 3 then --use item
			app_state = item_select_state	
		elseif self.menu_selection == 4 then --player stats
			app_state = player_stats_state

		elseif self.menu_selection == 5 then --end turn
			actor_index += 1
			self.move_used = false
			self.action_used = false
			self.menu_selection = 1
			self.attack_selection = nil
			self.adjacent_enemies = nil
			self.dice_rolled = false

		end
	end
end

function player:do_attack_menu()
	if (btnp(0)) then --left arrow (change selected enemy to attack)
		self.attack_selection -= 1
		if self.attack_selection == 0 then
			self.attack_selection = #self.adjacent_enemies
		end		
	elseif (btnp(1)) then --right arrow (change selected enemy to attack)
		self.attack_selection += 1
		if self.attack_selection > #self.adjacent_enemies then
			self.attack_selection = 1
		end
	elseif (btnp(4)) then --z go back
		self.adjacent_enemies = nil
		self.attack_selection = nil
		self.state = "move_or_action"
	elseif (btnp(5)) then --x attack enemy
		self:attack_enemy()
		self.action_used = true		
		if self.dice_rolled == true then
			printh("move used = true")
			self.ml = 0
			self.move_used = true
		end
		self.state = "move_or_action"
	end		
end

function player:attack_enemy()
	--get the enemy
	local en = self.adjacent_enemies[self.attack_selection]
	do_actor_attack(self, en)
end

--this could be simplified
function player:get_adjacent_enemies()
	local ret = {}

	local neighbour_tiles = getneighbours({self.x, self.y})

	for neighbour in all (neighbour_tiles) do
		if neighbour[3] > 5 then --this is the traversal cost. cost of 6 is an enemy
			add(ret, get_actor_on_tile(neighbour[1], neighbour[2]))
		end
	end

	return ret
end

function player:is_player_adjacent()
	local mate = self:get_mate()
	local ret = false

	if mate.x == self.x then
		if mate.y == self.y + 1 or mate.y == self.y - 1 then
			ret = true
		end
	elseif mate.y == self.y then
		if mate.x == self.x + 1 or mate.x == self.x - 1 then
			ret = true
		end
	end
	return ret
end

enemy={}

--enemy functions
function enemy:new(o)
	o = o or {}
	setmetatable(o, self)
 	self.__index = self 	
	return o
end

function enemy:init(en)
	self.x = en[1]
	self.y = en[2]
	self.type = en[3]
	self.active = false
	self.alive = true	

	--get enemy data
	local ed = enemy_type[self.type]

	self.name = ed[1]
	self.ms = ed[2]
	self.ml = self.ms
	self.ap = ed[3]
	self.dp = ed[4]
	self.bp = ed[5]
	self.mp = ed[6]
	self.sprite = ed[7]
end

function enemy:finishmove()
	
	self.ml = self.ms	
	self.path = nil
	actor_index += 1

	if actor_index > #actors then
		actor_index = 1
	end
end

function enemy:update()
	
	if (self.active == false) then 
		self:finishmove()
		do return end
	end

	timer += 1
	
	if self.path == nil and self.ml > 0 then
		self.paths = {}
		self:calcpath(1)
		self:calcpath(2)
		self.player_index = 2

		--determine shortest of the two paths
		if #self.paths[1] < #self.paths[2] then
			self.player_index = 1
		end

		self.path = self.paths[self.player_index]

		self.pathindex = 1
	end

	if timer >= 10 then
	
		timer = 0
		
		if self.ml == 0 or self.path == nil then
			self:finishmove()			
		else
	
			self.ml -= 1
			
			--we rached the end of the a star path, we are probably next to the player, lets check to be sure		
			if self.pathindex > #self.path  then				
				self.ml = 0
				local neighbours = getneighbours({self.x, self.y})
				local player_adjacent = false
				for nb in all(neighbours) do
					--if player is adjacent. attack
					if nb[1] == actors[self.player_index].x and nb[2] == actors[self.player_index].y then 
						player_adjacent = true
					end
				end
				
				if player_adjacent == true then
					do_actor_attack(self, actors[self.player_index])
				end
			else
				local prevx = self.x
				local prevy = self.y

				self.x = self.path[self.pathindex][1]
				self.y = self.path[self.pathindex][2]

				--if we landed on another enemy, move back and pass control to next enemy
				for i=3, #actors do
					if i != actor_index then
						if self.x == actors[i].x and self.y == actors[i].y and actors[i].alive then
							self.x = prevx
							self.y = prevy
							enemy:finishmove()
							return
						end
					end
				end

				self.pathindex += 1
			end
		end
	end

	--centre camera (not sure why im doing this at the end of enemy:update. todo look at)
 	set_camera(self.x * 8 - 64, self.y * 8 - 64)
end

-- function enemy:get_adjacent_player()
-- 	local ret = {}

-- 	local neighbour_tiles = getneighbours({self.x, self.y})

-- 	for neighbour in all (neighbour_tiles) do
-- 		if neighbour[1] == actor[1].x and neighbour[2] == actor[1].y then --this is the traversal cost. cost of 6 is an enemy
-- 			add(ret, get_actor_on_tile(neighbour[1], neighbour[2]))
-- 		end
-- 	end

-- 	return ret
-- end

function enemy:draw()	
	if self.active == true then 
		spr(self.sprite, self.x * 8, self.y * 8)
	end
end

--helper functions
function item_num_to_string(item_num)
	ret = item_num .. " not implemented"
	if item_num == 1 then 
		ret = "potion of healing"
	end
	return ret
end

--todo change to closed_chest....
function closed_chest_at_surrounding_location(x,y)
	local ret = nil
	if (ret == nil) ret = closed_chest_at_location(x+1, y)
	if (ret == nil) ret = closed_chest_at_location(x-1, y)
	if (ret == nil) ret = closed_chest_at_location(x, y+1)
	if (ret == nil) ret = closed_chest_at_location(x, y-1)
	return ret
end

function closed_chest_at_location(x,y)
	local ret = chest_at_location(x,y)
	if ret != nil then
		printh("ret == chest")
		if (ret.opened == true) then 
			ret = nil
			printh("chest open")
		end
	end
	return ret
end

--todo, shouldnt need this function. use sprite flags instead
function chest_at_location(x,y)
	local ret = nil
	for ch in all(chests) do
		if ch.x == x and ch.y == y then
			ret = ch
		end
	end
	return ret
end

function do_actor_attack(attacker, defender)
	gui.add_message(attacker.name .. " attacks " .. defender.name)

	--human players get 2 sides of dice for defence, ai get 1
	local defender_def_dice_sides = 2
	if defender.human == nil then
		defender_def_dice_sides = 1
	end

	--get number of attacker's attack dice
	local attack_dice = attacker.ap

	--get number of defender's defence dice
	local defence_dice = defender.dp

	local attack_hits = 0
	local defence_hits = 0

	--roll both sets
	for i=1, attack_dice do	
		local attack_die = flr(rnd(6))
		
		printh("attack_die: " .. attack_die)

		if attack_die <= 2 then --attack die always has 3 sides
			attack_hits += 1
		end
	end
	gui.add_message(attacker.name .. " rolls " .. attack_hits .. " attack")

	for i=1, defence_dice do
		local defence_die = flr(rnd(6))
		if defence_die < defender_def_dice_sides then 
			defence_hits += 1
		end
	end	
	gui.add_message(defender.name .. " rolls " .. defence_hits .. " defence")

	--do the math
	if attack_hits > defence_hits then
		local damage = attack_hits - defence_hits
		defender.bp -= damage
		gui.add_message(defender.name .. " loses " .. damage .. " bp")
		if defender.bp > 0 then
			gui.add_message(defender.name .. " has " .. defender.bp .. " bp left")
		elseif defender.bp <= 0 then

			gui.add_message(defender.name .. " has been killed", function()
				defender.alive = false
				defender.active = false
				end)
		end
	else
		gui.add_message(attacker.name .. " misses")
	end

end 

function init_mission(num)

	mission = get_mission(num)	

	for dl in all (mission.door_locations) do
		mset(dl[1], dl[2],48)
	end	

	--add end tile
	mset(mission.end_tile[1]  , mission.end_tile[2]  , 64)
	mset(mission.end_tile[1]+1, mission.end_tile[2]  , 65)
	mset(mission.end_tile[1]  , mission.end_tile[2]+1, 80)
	mset(mission.end_tile[1]+1, mission.end_tile[2]+1, 81)

	actors[1].x = mission.starting_point[1]
	actors[1].y = mission.starting_point[2]
	actors[2].x = mission.starting_point[1] + 1
	actors[2].y = mission.starting_point[2]

	--add the enemies
	for en in all(mission.enemies) do
		--create a new enemy based on the enemy data
		local enemy = enemy:new()
		enemy:init(en)
		add(actors, enemy)
	end	

	--add the rocks
	for rk in all(mission.rocks) do
		--create a new enemy based on the enemy data
		mset(rk[1], rk[2],50)
	end	

	--initialise chests
	chests={}
	for ch in all (mission.chest_data) do
		local l_chest = chest:new()
		l_chest:init(ch[1], ch[2], ch[3], ch[4])
		add(chests, l_chest)
	end	
end

function reveal_rooms(x,y)

	for rm in all(rooms) do
		--check player collision with room
		if cell_in_room(rm, x, y) then
			rm.visible = true

			--check all enemies collision with room
			for i=2, #actors do
				if cell_in_room(rm, actors[i].x, actors[i].y) then
					if actors[i].alive == true then
						actors[i].active = true
					end
				end
			end			
		end
	end
end

function cell_in_room(rm,x,y)
	if rm.x <= x  and rm.x + rm.w > x and rm.y <= y and rm.h + rm.y > y then
		return true
	end
	return false
end

function get_actor_on_tile(x,y)
	local ret = nil

	for i=1,#actors do
		if actors[i].x == x and actors[i].y == y then
			ret = actors[i]
		end
	end
	return ret
end

function set_camera(x,y)
	cam_cache = {x,y}
	camera(x,y)
end

function restore_camera()
	camera(cam_cache[1], cam_cache[2])
end

--astar specific
function enemy:calcpath(player_num)
	
	local start = {self.x, self.y} --enemy pos
	local goal = {actors[player_num].x, actors[player_num].y} --player pos

	local frontier = {}
	local came_from = {}
	local cost_so_far = {}
	local goalfound = false
	local current = {}

	insert(frontier, start, 0)
	came_from[vectoindex(start)] = nil
	cost_so_far[vectoindex(start)] = 0
	

	--when loop first enters. #frontier == 1 (start space)
	while (#frontier > 0 and #frontier < 1000) do
		--current is a vec2
		current = popend(frontier)
		
		--we found the goal
		if vectoindex(current) == vectoindex(goal) then
			goalfound = true
			break
		end

		local neighbours = getneighbours(current)
		
		for next in all(neighbours) do
			local nextindex = vectoindex(next)

			local new_cost = cost_so_far[vectoindex(current)]  + next[3] -- add extra costs here

			if (cost_so_far[nextindex] == nil) or (new_cost < cost_so_far[nextindex]) then
				cost_so_far[nextindex] = new_cost
				local priority = new_cost + heuristic(goal, next)
				insert(frontier, next, priority)

				came_from[nextindex] = current
			end 
		end
 	end
	
	if goalfound != true then --why didnt we find it????
		printh("error: goal not found!" .. "frontier len: " .. #frontier)				

	else	
		current = came_from[vectoindex(goal)]
		
		self.path = {}
		
		local cindex = vectoindex(current)
		local sindex = vectoindex(start)

		while cindex != sindex do
			add(self.path, current)
			current = came_from[cindex]
			cindex = vectoindex(current)
		end
		reverse(self.path)
		self.paths[player_num] = self.path
	end
end

-- pop the last element off a table
function popend(t)
 local top = t[#t]
 del(t,t[#t])
 return top[1]
end

function reverse(t)
 for i=1,(#t/2) do
  local temp = t[i]
  local oppindex = #t-(i-1)
  t[i] = t[oppindex]
  t[oppindex] = temp
 end
end

-- translate a 2d x,y coordinate to a 1d index and back again
function vectoindex(vec)
 return maptoindex(vec[1],vec[2])
end
function maptoindex(x, y)
 return ((x+1) * map_w) + y
end
function indextomap(index)
 local x = (index-1)/map_w
 local y = index - (x*w)
 return {x,y}
end

-- pop the first element off a table (unused
function pop(t)
 local top = t[1]
 for i=1,(#t) do
  if i == (#t) then
   del(t,t[i])
  else
   t[i] = t[i+1]
  end
 end
 return top
end

-- manhattan distance on a square grid
function heuristic(a, b)
 return abs(a[1] - b[1]) + abs(a[2] - b[2])
end

-- find all existing neighbours of a position that are not walls
function getneighbours(pos)
	local neighbours={}
	local x = pos[1]
	local y = pos[2]

	addneighbourtileif(neighbours, x-1, y)
	addneighbourtileif(neighbours, x+1, y)
	addneighbourtileif(neighbours, x, y-1)
	addneighbourtileif(neighbours, x, y+1)

-- for making diagonals
	if (x+y) % 2 == 0 then
		reverse(neighbours)
	end
	return neighbours
end

function addneighbourtileif(neighbours, x, y)
	local obstructed = true

	if x >= 0 and x < map_w and y >= 0 and y < map_h then
		if mget(x, y) > wallid 	then				
			obstructed = false						
			--iterate through actor_list 			
			for i=3, #actors do
				if i != actor_index then
					if x == actors[i].x and y == actors[i].y and actors[i].alive == true then
						obstructed = true
						add(neighbours,{x,y,6})
						return
					end
				end
			end
		end
	end

	if ( obstructed == false) then
		add(neighbours,{x,y,1})
	end
end

-- insert into table and sort by priority
function insert(t, val, p)
 if #t >= 1 then
  add(t, {})
  for i=(#t),2,-1 do
   
   local next = t[i-1]
   if p < next[2] then
    t[i] = {val, p}
    return
   else
    t[i] = next
   end
  end
  t[1] = {val, p}
 else
  add(t, {val, p}) 
 end
end


__gfx__
0055006000000aa000770004bbbbbbbb000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
05ff00600040aff007ff0040bb111bbb000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
50ff00600604aff077ff0040bb1bb1bb000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
fd6d5ff00600555000555f00bb1bb1bb000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
f6d6500000605f50005f5400bb111bbb000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0d6d50000006555000555000bb1bbbbb000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
055550000000555000555000bb11b1b1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0f00f0000000f0f000f0f000bbb1bb1b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
30000003000777000888888800b3bb30888888888888888888888888888888880000000000000000000000000000000000000000000000000000000000000000
b30b30b300777770011111180bbbbbb0881111188188881881111118811111180000000000000000000000000000000000000000000000000000000000000000
bbbbbbb30711777008888818bb61b613881888888118811881888888818888880000000000000000000000000000000000000000000000000000000000000000
bb2b2bb30777711708111188bbb3bbbb881888888181181881888888818888880000000000000000000000000000000000000000000000000000000000000000
1bbbbb30007177700188888803bbbb33881118888188881881888888818811180000000000000000000000000000000000000000000000000000000000000000
01b11b0007777770011111180b8b38b0881888888188881881888888818888180000000000000000000000000000000000000000000000000000000000000000
001bb00005057700088888880b811830881888888188881881111118811111180000000000000000000000000000000000000000000000000000000000000000
00011000005000000888888800bbb300888888888888888888888888888888880000000000000000000000000000000000000000000000000000000000000000
55000055111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000
51111115111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000
01000010111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000
01000010111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000
01000010111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000
01000010111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000
51111115111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000
55000055111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000
11154111154111115115511500000000000990000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
11544411154111115611661500000000055555500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
154444415444111161611665055555505aaaaaa50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
544444445444111111116615545445455aaaaaa50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
54444444544411115161611155599555555555550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
54444564545611116161161154544545545445450000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
54444444544411115616116654544545545445450000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
54444444544411115665565555555555555555550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000001111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000011111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000001001111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000011001111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000011100111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000011100111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000001110011110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000100110011110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00001100111001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00001110011100110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000111001110110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00010011101110010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00011001100111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00011101110011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00001110111001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

__gff__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001010000000000000000000000000000010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
2121212121212121212121212121212121212121212121212121212121212121212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120202020202020202020202020202021212020202020202020202020202020202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120222222222023232323202424242021212023232320252525252022222222202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120222222222023232323202424242021212023232320252525252022222222202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120222222222023232323202424242021212023232320252525252022222222202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120202020202020202020202424242021212023232320252525252022222222202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120262626262029292929202424242021212023232320202020202020202020202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120262626262029292929202020202021212020202020222222222027272727202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120262626262029292929202121212121212121212120222222222027272727202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120262626262029292929202120202020202020202120222222222027272727202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120262626262029292929202120252525252525202120222222222027272727202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120202020202020202020202120252525252525202120202020202020202020202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212120252525252525202121212121212121212121212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120202020202020202020202120252525252525202120202020202020202020202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120272727202424202525202120252525252525202120252525252022222222202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120272727202424202525202120202020202020202120252525252022222222202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120272727202424202525202121212121212121212120252525252022222222202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120272727202020202020202020202021212020202020202525252022222222202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120202020202323232323202222222021212023232323202020202020202020202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120262626202323232323202222222021212023232323202222222029292929202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120262626202323232323202222222021212023232323202222222029292929202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120262626202323232323202222222021212023232323202222222029292929202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120262626202323232323202222222021212023232323202222222029292929202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120202020202020202020202020202021212020202020202020202020202020202100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212121212121212121212121212121212121212121212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212121212121212121212121212121212121212121212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212121212121212121212121212121212121212121212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212121212121212121212121212121212121212121212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212121212121212121212121212121212121212121212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212121212121212121212121212121212121212121212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212121212121212121212121212121212121212121212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212121212121212121212121212121212121212121212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__music__
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344

