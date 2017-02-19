pico-8 cartridge // http://www.pico-8.com
version 9
__lua__

function get_mission(num)
	local l_mission = {}
	if num == 4 then 
l_mission = {
starting_point = {20,19},
door_locations = 
[[20,23|
18,20|
3,23|
3,18|
5,20|
7,17|
11,19|
10,17|
10,13|
9,11|
6,9|
3,5|
6,3|
11,3|
12,7|
15,3|
18,3|
22,5|
24,6|
27,9|
24,11|
20,12|]],
enemies =	
[[16,21,5|
17,21,6|
13,19,5|
2,24,4|
9,21,5|
9,19,4|
7,19,5|
2,19,4|
2,16,6|
6,14,5|
9,14,6|
3,12,5|
3,7,5|
5,7,6|
4,9,5|
5,3,4|
9,2,5|
8,7,4|
10,9,6|
18,12,4|
16,7,5|
17,7,4|
24,4,6|
25,3,6|
25,8,6|
24,9,4|
29,8,5|
30,12,4|
19,12,7|]],
rocks = 
[[32,24|
15,16|
18,16|
32,12|
16,1|
17,1|
15,8|
18,8|
1,24|
1,12|]]
,
chest_data = 
[[21, 22, 2, -1|
22, 22, 3, -1|
31, 24, 1, 200|
14, 22, 1, 200|
8, 22, 1, 200|
9, 22, 1, 200|
2, 14, 1, 200|
3, 14, 1, 200|
2, 12, 1, 150|
9, 6, 2, -1|
10, 6, 3, -1|
2, 9, 1, 200|
2, 10, 1, 200|
2, 2, 1, 200|
16, 8, 1, 200|
17, 8, 1, 200|
31, 7, 1, 200|
31, 8, 1, 200|
31, 10, 1, 50|
19, 10, 1, 50|
17, 10, 1, 50|
19, 10, 1, 50|
17, 10, 1, 50|
19, 14, 1, 50|
17, 14, 1, 50|]]
,
end_tile = {15,11}
}

elseif num == 3 then 
l_mission = {
starting_point = {18,12},
door_locations = 
[[17,15|
21,7|
22,2|
24,6|
27,3|
27,9|
32,3|
32,9|
24,13|
27,15|
29,18|
25,18|
29,23|
25,23|
20,23|
18,19|]],
enemies =	
[[14,11,3|
21,11,4|
19,4,3|
20,3,4|
29,5,3|
31,5,4|
23,9,3|
25,10,4|
30,10,4|
23,16,3|
25,16,4|
33,16,5|
29,20,4|
30,21,4|
27,24,5|
16,21,2|
17,21,3|]],
rocks = 
[[18,8|
22,12|
16,16|
16,17|
17,17|
15,24|
33,1|
33,13|]]
,
chest_data = 
[[14, 14, 2, -1|
15, 14, 3, -1|
23, 10, 1, 100|
30, 2, 1, 150|
31, 2, 1, 150|
33, 14, 1, 200|
23, 14, 1, 150|
30, 17, 1, 150|
24, 22, 1, 150|
16, 18, 1, 150|
17, 18, 1, 150|
19, 18, 1, 150|
22, 18, 1, 150|
22, 18, 1, 150|
22, 22, 1, 150|
19, 22, 1, 150|]]
,
end_tile = {20,19}
}

elseif num == 2 then 
l_mission = {
starting_point = {2,4},
door_locations = 
[[3,1|
8,1|
11,3|
11,6|
9,11|
4,11|
3,13|
7,13|
9,13|
13,12|]],
enemies =	
[[7,2,2|
9,2,2|
7,7,2|
7,9,2|
2,7,2|
2,12,3|
6,14,3|
7,15,2|
10,14,3|
12,11,4|]],
rocks = 
[[1,0|
15,0|
1,12|
15,8|
15,16|]]
,
chest_data = 
[[5, 2, 2, -1|
5, 3, 3, -1|
14, 6, 1, 50|
2, 10, 1, 100|
2, 17, 1, 100|
3, 17, 1, 75|
4, 17, 1, 100|				
6, 16, 1, 75|
7, 16, 1, 150|
10, 16, 1, 150|
14, 10, 1, 50|
15, 10, 1, 50|
14, 14, 1, 50|
15, 14, 1, 50|]]
,
end_tile = {17,12}
}

elseif num == 1 then 
l_mission = {
starting_point = {2,10},
door_locations = 
[[6,8|
9,5|
11,6|
11,3|
15,3|
3,1|
18,4|
20,1|]],
enemies =	
[[9,7,1|
13,3,1|
17,3,1|
17,5,1|
8,2,1|
10,2,1|
4,0,2|]],
rocks = 
[[1,0|
22,0|]],
chest_data = 
[[5, 2, 1, 200|
9, 10, 1, 100|
10, 10, 1, 100|
16, 7, 1, 100|
17, 7, 1, 100|
16, 1, 1, 100|
17, 1, 1, 100|
5,9,2,-1|]],
end_tile = {2,3}
}

elseif num == 5 then 
l_mission = {
starting_point = {20,19},
door_locations = 
[[18,20|
15,19|
15,21|
11,20|
5,20|
5,22|
3,18|
7,17|
9,17|
8,15|
5,15|
1,15|
13,7|
11,3|
9,5|
7,5|
6,7|
3,5|
4,1|
20,1|
22,3|
23,6|
25,6|
29,6|
32,3|
27,9|
32,15|
27,15|
25,13|
20,12|]],
enemies =	
[[13,19,5|
13,21,6|
8,18,4|
7,19,5|
8,21,4|
10,14,3|
6,14,6|
3,20,5|
2,21,5|
4,17,6|
3,14,6|
22,0,6|
8,12,6|
12,9,5|
14,2,2|
13,5,1|
9,7,3|
7,9,3|
9,10,3|
3,7,4|
3,9,4|
2,3,5|
13,0,6|
19,5,7|
21,6,6|
23,8,4|
23,10,4|
25,8,4|
29,4,6|
33,10,1|
33,11,7|
33,12,1|
33,13,2|
29,12,5|
18,12,7|]],
rocks = 
[[1,0|
22,0|
33,1|
0,11|
12,13|
15,8|
16,1|
17,1|
32,12|]],
chest_data = 
[[16,17,1,500|
17,17,1,500|
16,23,1,500|
17,23,1,500|
0,24,2,-1|
16,2,1,500|
17,2,1,500|
31,12,2,-1|
33,17,1,500|
28,17,1,500|
29,17,1,500|
30,17,1,500|
31,17,1,500|]],
end_tile = {15,11}
}

elseif num == 6 then 
l_mission = {
starting_point = {13,3},
door_locations = 
[[20,12|
15,3|]],
enemies =	
[[19,12,8|
18,11,1|
19,11,2|
18,12,3|
18,13,4|
19,13,5|]],
rocks = 
[[16,1|
17,1|
22,12|]],
chest_data = 
[[16,2,2,-1|]],
end_tile = {14,12}
}
	end
	return l_mission
end

function _init()
camera()
num_missions=6
floor_colours ={
	1,1,2,2,4,0
}
wall_colours={
	5,9,12,14,8,8
}
cnt = 0
--music()
app_state = mms
animator = 5
animator2 = false
animator2_counter = 0
gold = 0
draw_all_player_stats = false
actors={}
player_types = {
{"barbarian", "dominates in combat", "weak magic"},
{"dwarf", "good fighter", "decent magic ability"},
{"wizard", "weak defense and combat", "strong magic"}
}

equipment_table = {
{
{
{"long sword", 3, 0, "3 attack"},
{"power sword", 4, 300, "4 attack"},
{"gold sword", 6, 1000, "6 attack"},
{"death sword", 8, 3000, "8 attack"}
},
{
{"short sword",2,0, "2 attack"},
{"axe", 3, 300, "3 attack"},
{"power axe", 5, 1000, "5 attack"},
{"magic axe", 6, 3000, "6 atk x2 magic"}
},
{
{"staff", 1, 0, "1 attack"},
{"mighty staff", 2, 300, "2 atk"},
{"magic staff", 2, 1000, "2 atk x2 magic"},
{"wizard weapon", 3, 3000, "3 atk x4 magic"},
}
},
{
{"tunic", 1, 0, "1 defence die"},
{"iron armour", 2, 300, "2 defence dice"},
{"graphite suit", 3, 1000, "4 defence dice"},
{"golden armour", 4, 2000, "4 defence dice"},
{"diamond armour", 6, 4000, "6 defence dice"}
},
{
{"heal potion",1,150, "heals 4 body points"},
{"magic restore",2,250, "restores 4 magic points"}
}
}
	
enemy_type = {
{"goblin",4,1,1,1,1,16},
{"skeleton",6,2,2,1,0, 17},
{"zombie",3,2,1,3,0,18},
{"orc",8,2,3,2,2,19},
{"fimir",6,3,3,2,3,20},
{"mummy",4,4,2,3,0,21},
{"chaos warrior",8,4,4,4,3,22},
{"gargoyle",1,7,7,10,4,23},
}
 	
spell_list = {
{"heal",2},
{"fire",2},
{"sleep",1},
{"protect",2}
}
wallid = 32
actor_index=1
map_w=34
map_h=25
mission_num = 1
cam_cache = {0,0}
move_or_action_menu = {
"         move        ",
"        attack       ",
"      cast spell     ",
"       use item      ",
"     player stats    ",
"     finish turn     "
}
timer=0
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

mms={
	
	a = 0,
	u_ct = 0,

	update = function()
		mms.u_ct += 1
		if mms.u_ct > 5 then
			mms.a += 1 
			mms.u_ct = 0
		end
		if mms.a == 3 then mms.a = 0 end

		if btnp(5) then 
			sfx(40)
			css.init()
			app_state = css
		end	
	end,

	draw = function()
		if mms.a == 0 then
			pal()
			pal(7,0)
		elseif mms.a == 1 then
			pal(5, 6)
			pal(9, 8)
		elseif mms.a == 2 then
			pal(5, 13)
			pal(9, 10)
		end
		sspr(0, 96, 128, 32, 10, 30, 128, 32)	
		sspr(0 * 8, 0, 8, 8, 64-32-8, 100, 16, 16)	
		sspr(1 * 8, 0, 8, 8, 64-8, 100, 16, 16)	
		pal(7,7)
		sspr(2 * 8, 0, 8, 8, 64+32-8, 100, 16, 16)	
		pal(7,0)
		print("\x97 to start", 43, 80, 5)
	end
}

css={
	
	init=function ()
		css.selection = {1,1}
		css.player_num = 1
	end,

	update = function()
		local p_num = css.player_num

		if (btnp(0)) then 
			sfx(39) 
			css.selection[p_num] = max(1, css.selection[p_num] - 1)
		end
		if (btnp(1)) then
			sfx(39)
			css.selection[p_num] = min(3, css.selection[p_num] + 1)
		end
		if (btnp(4)) then
			if p_num == 2 then
				css.player_num -= 1
			end
		end
		if (btnp(5)) then
			sfx(40)
			local p = player:new()
			p:init(player_types[css.selection[p_num]][1], p_num)
			actors[p_num] = p
			css.player_num += 1

			if css.player_num > 2 then
				game_state:init()
				app_state = game_state
			end
		end
	end,

	draw = function()
	
		local y_offset = 0
		local p_num = css.player_num

		for i=1, p_num do
			if (i == 2) y_offset = 64

			rectfill(2,2 + y_offset,127,9 + y_offset,11)
			rectfill(0,0 + y_offset,126,8 + y_offset,3)

			rectfill(2,2 + y_offset,127,9 + y_offset,11)
			rectfill(0,0 + y_offset,126,8 + y_offset,3)
			
			print("\x8bparty member " .. i .. "\x91", 28, 2 + y_offset, 7)
			
			local p_type = player_types[css.selection[i]]
			local y_pos = 14 + y_offset

			for i=1, #p_type do
				print(p_type[i], 64 - 2 * #p_type[i], y_pos)
				y_pos += 10
			end

			if i == 2 then
				pal(5, 13, 0)
				pal(13, 5, 0)
			end

			sspr((css.selection[i] - 1) * 8, 0, 8, 8, 64-8, 44 + y_offset, 16, 16)
			pal()
		end

	end
}

game_state={
	init=function()
		init_mission(mission_num)
	end,

	update=function()

		if gui.active_messages() then 
			gui.update()
		else						
			if actors[actor_index].alive == true then
				actors[actor_index]:update()				
			else				
				increment_actor()
			end

			if actors[1].alive == false and actors[2].alive == false then
				gui.msg("your team has been killed")
				gui.msg("game over", function()
					_init()
				end)				
			else
				local p1 = actors[1]
				local p2 = actors[2]
				local at_end = true
				if p1.alive and fget(mget(p1.x, p1.y)) != 1 then
					at_end = false
				end
				if p2.alive and fget(mget(p2.x, p2.y)) != 1 then
					at_end = false
				end
				if at_end then
					
					if num_missions == mission_num then
						gui.msg("conglaturation")
						gui.msg("this story is happy end")
						gui.msg("picoquest by")
						gui.msg("adam hulbert")
						gui.msg("adamhportfolio.com")
						gui.msg("tweet - @hulbertadam", function()
							_init()
							end)
					else
						for i=1,2 do
							local p = actors[i]
							if p.alive == true then
								gui.msg(p.name .. "'s max bp increased")
								gui.msg(p.name .. "'s max mp increased")
								p.max_bp += 2
								p.max_mp += 2
							else
								gui.msg(p.name .. " was resurrected")
							end

						end
						gui.msg("advance to next level", function()
							ss.init()
							app_state = ss
							end)
					end
				end
			end

		end
	end,

	draw=function()
		for rm in all(rooms) do
			rm:draw()
		end	
		
		for ac in all(actors) do
			ac:draw(false)
		end

		for ac in all(actors) do
			ac:draw(true)
		end

		for ch in all(chests) do
			ch:draw()
		end
		
		gui.draw()

		draw_active_actor_stats()

		gui.msg_p("")
	end
}

function draw_active_actor_stats()
	local a = actors[actor_index]

	if draw_all_player_stats == false then
		
		local a_str = "body:" .. a.bp .. "/" .. a.max_bp
		if a.human != nil then
			a_str = a_str .. " magic:" .. a.mp .. "/" .. a.max_mp .. " gold:" .. gold
		end
		camera()
		rectfill(3,3,127,11,11)
		rectfill(2,2,126,10,3)	
		print(a_str, 64 - #a_str*2,4,7)		
		restore_camera()
	else
		
		local a_info = {
			a.name,
		 	"body:" .. a.bp .. "/" .. a.max_bp .. " magic:" .. a.mp .. "/" .. a.max_mp .. " gold:" .. gold,
			a.wpn[1] .. ":" .. a.wpn[4],
			a.armour[1] .. ":" .. a.armour[4]
		}

		if a.protection > 0 then 
			add(a_info, "protection level: " .. a.protection)
		end
		if a.sleep > 0 then 
			add(a_info, "asleep: " .. a.protect)
		end		

		if #a.items > 0 then
			add(a_info, "")
			add(a_info, "---items---")
		end

		for item in all(a.items) do
			add(a_info, i_to_s(item))
		end

		local y_sz = #a_info * 8 + 1

		camera()
		rectfill(3,3,127,y_sz+3,11)
		rectfill(2,2,126,y_sz+2,3)	
		local y_pos = 4
		for a_str in all(a_info) do
			local colour = 7
			if sub(a_str, 1, 7) == "protect" then
				colour = 12
			end
			print(a_str, 64 - #a_str*2,y_pos,colour)	
			y_pos += 8	
		end	
		restore_camera()
	end
end

ss={
	init = function()
		ss.categories = { 
			"weapons",
			"armour",
			"items"
		}

		ss.player_num = 1
		ss.item_num = 1
		ss.browsing_selection = 1
		ss.y_selection = 1
		camera()
	end,

	update = function()
		
		if (btnp(3)) then
			sfx(39)
			ss.y_selection += 1
			if (ss.y_selection == 3) ss.y_selection = 5
			ss.y_selection = min(ss.y_selection, 7)
		end
		if (btnp(2)) then
			sfx(39)
			ss.y_selection -= 1
			if (ss.y_selection == 4) ss.y_selection = 2
			ss.y_selection = max(1, ss.y_selection)
		end

		local x_val = 0
		if (btnp(0)) then
			sfx(39)
		 	x_val -= 1
		end
		if (btnp(1)) then
			sfx(39)
			x_val += 1
		end


		local y_sel = ss.y_selection

		if y_sel == 1 then
			ss.browsing_selection += x_val
			ss.browsing_selection = max(ss.browsing_selection, 1)
			ss.browsing_selection = min(#ss.categories, ss.browsing_selection)
			if (x_val != 0) ss.item_num = 1
		elseif y_sel == 2 then

			local list_sz = 1
			local b_sel = ss.browsing_selection

			if b_sel == 1 then
				list_sz = #equipment_table[b_sel][ss.player_num]
			else
				list_sz = #equipment_table[b_sel]
			end

			ss.item_num += x_val
			ss.item_num = max(ss.item_num, 1)
			ss.item_num = min(list_sz, ss.item_num)
		elseif y_sel == 6 then
			ss.player_num += x_val
			ss.player_num = max(ss.player_num, 1)
			ss.player_num = min(2, ss.player_num)
		end

		if btnp(5) then 
			if ss.y_selection == 5 then
				local b_item = ss.browsing_item
				if gold >= b_item[3] then
					gold -= b_item[3]
					local p = actors[ss.player_num]
					if ss.browsing_selection == 1 then
						sfx(43)
						p.wpn = b_item
					elseif ss.browsing_selection == 2 then
						sfx(43)
						p.armour = b_item
					elseif ss.browsing_selection == 3 then
						if #p.items >= 3 then
							sfx(42)
							gold += b_item[3]
						else
							sfx(43)
							add(p.items, b_item[2])
						end
					end
				else
					sfx(42)
				end
			elseif ss.y_selection == 7 then
				sfx(40)
				mission_num += 1
				game_state.init()
				app_state = game_state
				cnt=0
			end
		end
	end,

	draw = function()
		local p_num = ss.player_num
		local rect_colour = 5
		if (p_num == 2) rect_colour = 13
		rectfill(0,0,128,128,rect_colour)
		rectfill(5,4, 128-5, 53, 1)		
		rectfill(5,54, 128-5, 103, 2)				
		rectfill(5,104, 128-5, 122, 3)	

		local p = actors[p_num]
		local b_sel = ss.browsing_selection
		local i_num = ss.item_num
		local y_sel = ss.y_selection
		local w_tbl = equipment_table[1]
		local a_tbl = equipment_table[2]
		
		local b_item = ss.browsing_item

		if b_sel == 1 then
			b_item = equipment_table[b_sel][p.type][i_num]
		else
			b_item = equipment_table[b_sel][i_num]
		end

		ss.browsing_item = b_item

		local shop_strings = {
			"current weapon: " .. p.wpn[1],
			p.wpn[4],
			"current armour: " .. p.armour[1],
			p.armour[4],
			"gold: " .. gold,
			ss.categories[b_sel],
			b_item[1],
			b_item[4],
			b_item[3] .. " gold",
			"buy",
			"player " .. p_num,
			"next level",
		}

		if y_sel == 5 or y_sel == 7 then
			shop_strings[5 + y_sel] = "\x97" .. shop_strings[5 + y_sel] .. "\x97"
		else
			shop_strings[5 + y_sel] = "\x8b" .. shop_strings[5 + y_sel] .. "\x91"
		end

		local y_offset = 6
		color(7)
		for i=1, #shop_strings do
			local str = shop_strings[i]
			local x_pos = 64 - #str * 2
			if(5 + y_sel == i) x_pos -= 4
			print(str, x_pos,y_offset)
			y_offset += 10
		end

		if p_num == 2 then
			pal(5, 13, 0)
			pal(13, 5, 0)
		end
		sspr(p.sprite * 8, 0, 8, 8, 95, 105, 16, 16)
		pal()

	end
}

gui={
	messages = {},
	menu_sel = 1,
	p_msg = "",
	msg = function (msg, callback)
		local gui_msg = {msg, callback}

		for m in all(gui.messages) do 
			if m[1] == msg then
				do return end
			end
		end

		add(gui.messages, gui_msg)
	end,

	msg_p = function(msg)
		gui.p_msg = msg
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
local p = actors[actor_index]

if #gui.messages == 0 then
	gui.menu_sel = p.menu_selection
end

local sel = {4,8,2,13,3,1,5}

rectfill(2,118,127,126, 7)
rectfill(0,117,126,125, sel[gui.menu_sel])


local y_pos = 119
if #gui.p_msg > 0 then
	print(gui.p_msg, 64 - #gui.p_msg*2 - 2, y_pos, 7)	
elseif #gui.messages > 0 then
	local msg = gui.messages[1][1] .. " \x97"
	print(msg, 64 - #msg*2 - 2, y_pos, 7)		

elseif actor_index < 3 then
			
	if p.state == "move" then	
		print("       moves left " .. p.ml, 10, y_pos, 7)		
	elseif p.state == "move_or_action" then					
		print("\x8b" .. move_or_action_menu[p.menu_selection] .. "\x91", 15, y_pos, 7)		
	elseif p.state == "spell_select" then
		local spell_name = "\x8b" .. spell_list[p.spell_selection][1] .. "\x91"					
		print(spell_name,  64 - #spell_name * 2, y_pos, 7)	
	elseif p.state == "attack_menu" then
		print(" \x8bselect enemy\x91   attack\x97", 5, y_pos, 7)			
		local en = p.adjacent_enemies[p.a_s]			
	elseif p.state == "spell_menu" then		
		local spell_name = spell_list[p.spell_selection][1]
		print(" \x8bcast ".. spell_name .." on\x91   cast\x97", 5, y_pos, 7)			
	elseif p.state == "give_menu" then			
		print(" \x8b" .. i_to_s(p.items[p.item_selection]) .."\x91", 5, y_pos, 7)			
		print("\x97give", 97, y_pos, 7)	
		local mt = p:get_mate()
		p.adjacent_enemies = {mt}
		p.a_s = 1
		restore_camera()
		rect(mt.x * 8, mt.y * 8, mt.x * 8 + 7, mt.y * 8 + 7, animator)
	elseif p.state == "item_select_state" then
		print(" \x8b" .. i_to_s(p.items[p.item_selection]) .."\x91", 5, y_pos, 7)	
		print("\x97drink", 95, y_pos, 7)
	end

	if p.state == "attack_menu" or p.state == "spell_menu" or p.state == "give_menu" then	

		local en = p.adjacent_enemies[p.a_s]			
		local en_y = en.y * 8
		restore_camera()
		rect(en.x * 8, en_y, en.x * 8 + 7, en_y + 7, animator)

		local rect1colour = 14
		local rect2colour = 2
		if en.human != nil then
			en.dp = en.armour[2]
			en.ap = en.wpn[2]
			rect1colour = 13
			rect2colour = 1
		end
		local en_x = en.x * 8 + 8
		
		
		local hilight_stats = {
			en.name,
			"body: " .. en.bp .. "/" .. en.max_bp,
			"attack: " .. en.ap,
			"defens: " .. en.dp,
		}

		if en.sleep > 0 then
			add(hilight_stats, "asleep")
		end
		if en.protection > 0 then
			add(hilight_stats, "protected")
		end

		local rect_height = #hilight_stats * 8

		rectfill(en_x + 2, en_y + 2, en_x + 42, en_y + rect_height + 2, rect1colour)
		rectfill(en_x, en_y, en_x + 40, en_y + rect_height, rect2colour)

		local y_pos = en_y + 2

		for str in all(hilight_stats) do
			local colour = 7
			if str == "asleep" or str == "protected" then
				colour = 12
			end
			print(str, en_x + 2, y_pos, colour)
			y_pos += 8
		end
	end
end

restore_camera()
	end
}

chest = {}

function chest:new(o)
o = o or {}
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
self.visible = false
end

function chest:draw()
if self.visible == true then
local sprite = 51
if self.opened == true then
sprite = 52
end
spr(sprite, self.x * 8, self.y * 8)
end
end

room={}

function room:new(o)
o = o or {}
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
	pal(1, floor_colours[mission_num], 0)
	pal(5, wall_colours[mission_num], 0)
	if (self.visible) then
		map(self.x, self.y, self.x*8, self.y*8, self.w, self.h)
	end
	pal()
end

function init_rooms_array()
	
	for i=1,35 do
		add(rooms, room:new())
	end

	r = {
	{2,2,4,3},
	{7,2,4,3},
	{12,2,3,5},
	{12,2,3,5},
	{2,6,4,5},
	{7,6,4,5},
	{19,2,3,5},
	{23,2,4,4},
	{28,2,4,4},
	{23,7,4,4},
	{28,7,4,4},
	{14,10,6,5},
	{2,14,3,4},
	{6,14,2,3},
	{9,14,2,3},
	{2,19,3,4, false, true},
	{6,18,5,5},
	{12,18,3,5},
	{23,14,4,4},
	{28,14,4,4},
	{19,18,4,5},
	{24,19,3,4},
	{28,19,4,4},
	{0,0,34,2,true},
	{32,0,2,25,true},
	{0,23,34,2,true},
	{0,0,2,25,true},
	{15,0,4,9,true},
	{21,11,13,3,true},
	{15,16,4,9,true},
	{0,11,13,3,true},
	{11,7,12,3,true},
	{20,7,3,11,true},
	{11,15,12,3,true},
	{11,7,3,11,true}
	}

	for i=1, 35 do
		local rm = r[i]
		rooms[i]:init(rm[1], rm[2], rm[3], rm[4], rm[5], rm[6])
	end

end

player = {}

function player:new(o)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	return o
end

function player:init(type, index)
	self.index = index

	self.name = type
	self.human = true
	self.flip = false

	local weapons = equipment_table[1]
	local armour = equipment_table[2]

	if type == "barbarian" then
		self.armour = armour[2]
		self.sprite = 0
		self.max_bp = 8
		self.max_mp = 0 
		self.type = 1
	elseif type == "dwarf" then
		self.armour = armour[2]
		self.sprite = 1
		self.max_bp = 6
		self.max_mp = 4
		self.type = 2
	elseif type == "wizard" then		
		self.armour = armour[1]
		self.sprite = 2
		self.max_bp = 4
		self.max_mp = 8
		self.type = 3
	end

	self.wpn = weapons[self.type][1]

	self.ml = 0
	self.x = 0
	self.y = 0
	self:reset()

	self.items = {}
	
end

function player:reset()
	self.bp = self.max_bp
	self.mp = self.max_mp
	self.alive = true
	self.menu_selection = 1
	self.item_selection = 1
	self.state = "move_or_action"
	self.move_used = false
	self.action_used = false
	self.movement_dice_rolled = false
	self.protection = 0
	self.sleep = 0
end

function player:initial_update()
	local en = self:get_adjacent_enemies()
	if (#en > 0) self.menu_selection = 2
	cnt=0
end

function player:update()
	cnt += 1
	if self.alive == false then
		increment_actor()
		do return end
	end

	if self.sleep >= 2 then
		gui.msg(self.name .. " is asleep")
		self.sleep -= 1
		increment_actor()
		do return end
	elseif self.sleep == 1 then
		gui.msg(self.name .. " woke up")
		self.sleep -= 1
	end

	if (btnp(4)) then
		self.state = "move_or_action"
		self.menu_selection = 6
	end

	if self.state == "move" then
		self:move()
	elseif self.state == "move_or_action" then
		self:do_move_or_action_menu()
	elseif self.state == "attack_menu" then
		self:do_attack_menu()
	elseif self.state == "give_menu" then
		self:do_give_menu()		
	elseif self.state == "spell_select" then
		self:do_spell_select()		
	elseif self.state == "spell_menu" then
		self:do_spell_menu()		
	elseif self.state == "item_select_state" then
		self:do_item_select()
	end	
end

function player:do_item_select()
	
	local p = self
	if (btnp(0)) p.item_selection -= 1
	if (btnp(1)) p.item_selection += 1
	if (p.item_selection < 1) p.item_selection = #p.items
	if (p.item_selection > #p.items) p.item_selection = 1
	if (btnp(4)) p.state = "move_or_action"
	if (btnp(5)) then
		sfx(35)
		local item = p.items[p.item_selection]
		if item == 2 then
			local old_bp = p.bp			
			p.bp += 4
			if(p.bp > p.max_bp) p.bp = p.max_bp
			gui.msg("used potion of heal")
			gui.msg(p.bp - old_bp .. " body restored" )
		elseif item == 3 then
			local old_mp = p.mp			
			p.mp += 4
			p.mp = min(p.mp, p.max_mp)
			gui.msg("used magic restore")
			gui.msg(p.mp - old_mp .. " magic restored" )
		end
		del(p.items, p.items[p.item_selection])
		p.state = "move_or_action"
	end	
end

function player:do_give_menu()
	if (btnp(0)) then	
		sfx(39)	
		self.item_selection = max(self.item_selection - 1, 1)
	elseif (btnp(1)) then
		sfx(39)
		self.item_selection = min(self.item_selection + 1, #self.items)
	elseif (btnp(5)) then
		local mate = self:get_mate()
		if #mate.items < 3 then
			sfx(40)
			add(mate.items, self.items[self.item_selection])
			gui.msg("given " .. i_to_s(self.items[self.item_selection]))
			del(self.items, self.items[self.item_selection])
		else
			sfx(42)
			gui.msg(mate.name .. " cannot carry more")
		end

		self.state = "move_or_action"
	end
end

function player:rollmovementdice()
	self.movement_dice_rolled = true
	return flr(rnd(6)) + flr(rnd(6)) + 2
end

function player:draw(alive)	
	if self.alive != alive then
		do return end
	end

	local d = true

	if self.index == 2 then
		pal(5, 13, 0)
		pal(13, 5, 0)
	end

	if actor_index == self.index then
		if self.state != "spell_menu" and self.state != "attack_menu" then
			set_camera(self.x * 8 - 64, self.y * 8 - 64)
			if animator == 7 and cnt < 20 then
				d = false
			end
		else
			local en = self.adjacent_enemies[self.a_s]
			set_camera(en.x * 8 - 64, en.y * 8 - 64)
		end
	end

	local sprite = self.sprite

	if alive != true then
		sprite += 3
	end

	if d == true then
		spr(sprite,self.x*8,self.y*8,1,1,self.flip)
	end

	if actor_index == self.index then
		restore_camera()	
	end

	pal()
end

function player:move()

	if self.movement_dice_rolled == false then
		self.ml = player:rollmovementdice()
		self.dice = self.ml
		gui.msg("player rolled: " .. self.ml)	
		self.movement_dice_rolled = true		
		do return end
	end

	local prevx = self.x
	local prevy = self.y
	local heading = {x=0, y=0}

	if self.ml > 0 then 
		if (btnp(0)) then 
			heading.x -= 1
			self.flip = true				
		elseif (btnp(1)) then
			heading.x += 1
			self.flip = false
		elseif (btnp(2)) then
			heading.y -= 1			
		elseif (btnp(3)) then 
			heading.y += 1	
		end
	end

	self.x += heading.x
	self.y += heading.y

	if (btnp(5)) then 
		local ch_opened = false
		do
			local ch, x = ccasl(self.x, self.y)
			if ( ch != nil and ch.opened == false) then 				
				if x == 1 then
					self.flip = false
				elseif x ==-1 then
					self.flip = true
				end
				if ch.chest_type == 1 then
					sfx(37)	
					gui.msg("you found " .. ch.amount .. " gold")						
					gold += ch.amount
				elseif ch.chest_type >= 2 then
					gui.msg("you found " .. i_to_s(ch.chest_type))
					if #self.items >= 3 then
						sfx(42)
						gui.msg("too many items", function()
							ch.opened = false
							end)
					else
						sfx(37)		
						add(self.items, ch.chest_type)
					end
				end
				ch.opened = true
				ch_opened = true
			end
		end
		if ch_opened == false and self.action_used ==false then 
			self.adjacent_enemies = self:get_adjacent_enemies()
			if #self.adjacent_enemies > 0 then 
				self.state = "attack_menu"
				self.a_s = 1
			end
		end
		if self.state != "attack_menu" and ch_opened == false and self:is_player_adjacent() == true then
			if #self.items >= 1 then
				local mate = self:get_mate()
				if mate.x > self.x then 
					self.flip = false
					mate.flip = true
				elseif mate.x < self.x then
					self.flip = true
					mate.flip = false
				end
				self.state = "give_menu"
				self.item_selection = 1
			end
		end
		if self.state == "move" and ch_opened == false then
			self.state = "move_or_action"
			self.menu_selection = 6
		end
	end

	if self:check_simple_collision() == true then
		self.x = prevx
		self.y = prevy
	end
		
	--doors
	if ( mget(self.x, self.y) == 48 )	then
		sfx(41)
		mset(self.x, self.y, 49)
	end

	local mate = self:get_mate()
	if mate.x == self.x and mate.y == self.y and mate.alive == true then
		self.x += heading.x
		self.y += heading.y

		if self.ml < 2 or self:check_simple_collision() == true then
			gui.msg("can not pass")
			self.x = prevx
			self.y = prevy

		else
			gui.msg("passed player")
			self.ml -= 1
		end
	end

	if self.x ~= prevx or self.y ~= prevy then
		self.ml -= 1		
		reveal_rooms(self.x, self.y)
		sfx(34)
	end	
	if (self.ml == 0) self:set_move_used()
end

function player:check_simple_collision()
	local collided = false

	if ( mget(self.x, self.y) == wallid or mget(self.x, self.y) == 50 or cat(self.x, self.y) != nil) then
		collided = true
	end

	if self.x < 0 or self.x >= map_w or self. y < 0 or self.y >= map_h then
		collided = true
	end

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

function player:do_spell_select()
	if (btnp(0)) self.spell_selection = max(1, self.spell_selection - 1)
	if (btnp(1)) self.spell_selection = min(#spell_list, self.spell_selection + 1)
	if (btnp(5)) then
		--todo on spell select
		local param={true, false, false, true}
		self.adjacent_enemies = self:get_actors_in_room(param[self.spell_selection])
		self.state = "spell_menu"
		self.a_s = 1
	end
end

function player:next_menu_selection(dir)
	if dir > 0 then
		if self.move_used == true and self.menu_selection == 1 then
			self.menu_selection = 2
		end
		if self.action_used == true and (self.menu_selection == 2 or self.menu_selection == 3) then 
			self.menu_selection = 4
		end
	elseif dir < 0 then
		if self.action_used == true and (self.menu_selection == 2 or self.menu_selection == 3) then 
			self.menu_selection = 1
		end
		if self.move_used == true and self.menu_selection == 1 then
			self.menu_selection = #move_or_action_menu
		end
	end	
end

function player:set_move_used()
	self.move_used = true
	self:next_menu_selection(-1)
end

function player:set_action_used()
	self.action_used = true
	self:next_menu_selection(-1)
end

function player:do_move_or_action_menu()

	local x_sel = 0
	if (btnp(0)) then 
		sfx(39)
		x_sel -= 1
	end
	if (btnp(1)) then
		sfx(39)
		x_sel += 1
	end

	self.menu_selection += x_sel

	if self.menu_selection < 1 then self.menu_selection = #move_or_action_menu end
	if self.menu_selection > #move_or_action_menu then self.menu_selection = 1 end

	self:next_menu_selection(x_sel)

	if (btnp(5)) then
		sfx(40)
		if self.menu_selection == 1 then
			self.state = "move"
		elseif self.menu_selection == 2 then
			if self.action_used == false then
				self.adjacent_enemies = self:get_adjacent_enemies()
				if (#self.adjacent_enemies == 0) gui.msg("no enemy to attack")
				if (#self.adjacent_enemies > 0) then
					self.state = "attack_menu"
					self.a_s = 1
				end
			else
				gui.msg("action already performed")
			end
		elseif self.menu_selection == 3 then
			if self.action_used == false then
				self.state = "spell_select"
				self.spell_selection = 1			
			else
				gui.msg("action already performed")
			end
		elseif self.menu_selection == 4 then
			if #self.items < 1 then
				gui.msg("you have no items")
				sfx(42)
			else
				self.state = "item_select_state"
			end
		elseif self.menu_selection == 5 then
			draw_all_player_stats = true
			gui.msg("continue", function()
				draw_all_player_stats = false
				end)

		elseif self.menu_selection == 6 then
			increment_actor()
			self.action_used = false
			self.menu_selection = 1
			self.a_s = nil
			self.adjacent_enemies = nil
			self.movement_dice_rolled = false
			self.move_used = false
		end
	end
end

function player:update_a_s()
	if (btnp(0)) then
		self.a_s -= 1
		if self.a_s == 0 then
			self.a_s = #self.adjacent_enemies
		end		
	elseif (btnp(1)) then
		self.a_s += 1
		if self.a_s > #self.adjacent_enemies then
			self.a_s = 1
		end
	elseif (btnp(4)) then
		self.adjacent_enemies = nil
		self.a_s = nil
		self.state = "move_or_action"
	end

	local en = self.adjacent_enemies[self.a_s]
	if en.x < self.x then
		self.flip = true
	elseif en.x > self.x then
		self.flip = false
	end
end

function player:do_attack_menu()
	self:update_a_s()
	self.menu_selection = 2

	if (btnp(5)) then
		self:attack_enemy()
		self:set_action_used()
		if self.movement_dice_rolled == true then
			self:set_move_used()
		end
		self.state = "move_or_action"
	end		
end

function player:do_spell_menu()
	self:update_a_s()

	if (btnp(5)) then		
		local spell_receiver = self.adjacent_enemies[self.a_s]
		local spell = spell_list[self.spell_selection]
		--todo check if enough mp at this point. remove check from cast_spell
		self:cast_spell(spell, spell_receiver)		
	end		
end

function player:cast_spell(spell, spell_receiver)
	if self.mp >= spell[2] then
		sfx(36)
		self.mp -= spell[2]
		self:set_action_used()
		if self.movement_dice_rolled then
			self:set_move_used()
		end

		local weapon_name = self.wpn[1]
		local magic_multiplier = 1
		if(weapon_name == "magic axe" or weapon_name == "magic staff") magic_multiplier = 2
		if(weapon_name == "wizard weapon") magic_multiplier = 4

		if spell[1] == "heal" then
			local old_bp = spell_receiver.bp
			spell_receiver.bp = min(spell_receiver.bp + 2 * magic_multiplier, spell_receiver.max_bp)
			gui.msg("heal cast on " .. spell_receiver.name)
			gui.msg(spell_receiver.bp - old_bp .. " body recovered")
		elseif spell[1] == "fire" then
			local old_bp = spell_receiver.bp
			gui.msg("fire cast on " .. spell_receiver.name)
			spell_receiver.bp = max(0, spell_receiver.bp - 1 * magic_multiplier)
			gui.msg(spell_receiver.name .. " lost " ..old_bp-spell_receiver.bp .. " body point(s)")
			if spell_receiver.bp <= 0 then

				gui.msg(spell_receiver.name .. " was killed", function()
						spell_receiver.alive = false
						--spell_receiver.active = false
					end)
			end
		elseif spell[1] == "sleep" then
			spell_receiver.sleep = magic_multiplier + 1
			gui.msg("sleep cast on " .. spell_receiver.name)
		elseif spell[1] == "protect" then
			spell_receiver.protection = 2 * magic_multiplier
			gui.msg("protect cast on " .. spell_receiver.name)
		end
		self.state = "move_or_action"
	else
		gui.msg("not enough mp")
	end
end

function player:attack_enemy()
	local en = self.adjacent_enemies[self.a_s]
	do_actor_attack(self, en)
end

function player:get_adjacent_enemies()
	local ret = {}

	local neighbour_tiles = getneighbours({self.x, self.y})

	for neighbour in all (neighbour_tiles) do
		if neighbour[3] > 5 then
			add(ret, get_actor_on_tile(neighbour[1], neighbour[2]))
		end
	end

	return ret
end
 
function add_actor_if_in_room_and_unique(rm, actor, ret)
	printh("add_actor_if_in_room_and_unique " .. rm.x .. " " .. actor.name .. " " .. #ret)
	if cell_in_room(rm, actor.x, actor.y) then
		if actor.alive == true then
			local to_add = true
			for tmp_act in all(ret) do
				if actor == tmp_act then
					to_add = false
				end
			end	
			if to_add == true then
				add(ret, actor)
			end
		end
	end
end

function player:get_actors_in_room(humansfirst)
	local ret = {}
	printh(#ret)

	local rooms = rooms_actor_is_in(self)

	if humansfirst == true then
		for actor in all(actors) do
			for rm in all(rooms) do			
				add_actor_if_in_room_and_unique(rm, actor, ret)
			end
		end
	else
		for i=3, #actors do
			for rm in all(rooms) do			
				add_actor_if_in_room_and_unique(rm, actors[i], ret)
			end
		end
		for i=1, 2 do
			for rm in all(rooms) do			
				add_actor_if_in_room_and_unique(rm, actors[i], ret)
			end			
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
	self.flip = false

	local ed = enemy_type[self.type]

	self.name = ed[1]
	self.ms = ed[2]
	self.ml = self.ms
	self.ap = ed[3]
	self.dp = ed[4]
	self.bp = ed[5]
	self.max_bp = self.bp
	self.mp = ed[6]
	self.sprite = ed[7]
	self.protection = 0
	self.sleep = 0
end

function increment_actor()
gui.msg_p("working...")
actor_index += 1

if actor_index > #actors then
actor_index = 1
end

if actor_index <= 2 then
actors[actor_index]:initial_update()
end
end

function enemy:finishmove()

self.ml = self.ms	
self.path = nil
increment_actor()
end

function enemy:update()
	
	if (self.active == false) then 
		self:finishmove()
		do return end
	end

	--todo put somewhere common for player and enemy
	if self.sleep >= 2 then
		gui.msg(self.name .. " is asleep")
		self.sleep -= 1
		increment_actor()
		do return end
	elseif self.sleep == 1 then
		gui.msg(self.name .. " woke up")
		self.sleep -= 1
	end

	timer += 1
	
	if self.path == nil and self.ml > 0 then		
		self.paths = {}
		if actors[1].alive == true then
			self:calcpath(1)
		end
		if actors[2].alive == true then
			self:calcpath(2)
		end
		self.player_index = 2

		if self.paths[2] == nil then 
			self.player_index = 1
		elseif self.paths[1] == nil then 
			self.player_index = 2
		elseif #self.paths[1] < #self.paths[2] then
			self.player_index = 1
		end

		self.path = self.paths[self.player_index]

		if (self.path != nil and #self.path > 20) self.path=nil

		self.pathindex = 1
	end

	if timer >= 10 then
	
		timer = 0
		
		if self.ml == 0 or self.path == nil then
			self:finishmove()			
		else
			local p = actors[self.player_index]
			set_camera(p.x*8-64, p.y*8-64)
	
			self.ml -= 1
			
			if self.pathindex > #self.path  then				
				self.ml = 0
				local neighbours = getneighbours({self.x, self.y})
				local player_adjacent = false
				for nb in all(neighbours) do
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

				if prevx > self.x then
					self.flip = false
				elseif prevx < self.x then
					self.flip = true
				end

				for i=1, #actors do
					if i != actor_index then
						if self.x == actors[i].x and self.y == actors[i].y and actors[i].alive then
							self.x = prevx
							self.y = prevy
							if i < 3 then
								do_actor_attack(self, actors[i])
							end
							enemy:finishmove()
							return
						end
					end
				end

				self.pathindex += 1
			end
		end
	end
end

function enemy:draw(alive)	
	if self.alive != alive then
		do return end
	end

	if self.active == true then 
		local rooms = rooms_actor_is_in(self)
		local d = false
		for rm in all(rooms) do
			if rm.visible == true then
				d = true
			end
		end

		if d == true then

			local sprite = self.sprite
			if alive == false then 
				sprite += 8
			end
			spr(sprite,self.x*8,self.y*8,1,1,self.flip)
		end
	end
end

function i_to_s(item_num)
local ret = ""
if item_num == 2 then 
ret = "heal potion"
elseif item_num == 3 then 
ret = "magic restore"
end	
return ret
end

function ccasl(x,y)
	local ret = nil
	local retx = 0
	if (ret == nil) then
		ret = ccat(x+1, y)
		retx += 1
	end
	if (ret == nil) then 
		ret = ccat(x-1, y)
		retx -= 1
	end
	if (ret == nil) ret = ccat(x, y+1)
	if (ret == nil) ret = ccat(x, y-1)
	return ret,retx
end

function ccat(x,y)
	local ret = cat(x,y)
	if ret != nil then
		if (ret.opened == true) then 
			ret = nil
		end
	end
	return ret
end

function cat(x,y)
	local ret = nil
	for ch in all(chests) do
		if ch.x == x and ch.y == y then
			ret = ch
		end
	end
	return ret
end

function do_actor_attack(a, d)
	gui.msg(a.name .. " attacks " .. d.name)

	local d_dice_sides = 2
	if d.human == nil then
		d_dice_sides = 1
	else
		d.dp = d.armour[2]
	end

	if a.human != nil then
		a.ap = a.wpn[2]
	end

	local attack_dice = a.ap

	local defence_dice = d.dp
	defence_dice += d.protection

	local attack_hits = 0
	local defence_hits = 0

	for i=1, attack_dice do	
		local attack_die = flr(rnd(6))
		
		if attack_die <= 2 then
			attack_hits += 1
		end
	end
	gui.msg(a.name .. " rolls " .. attack_hits .. " attack")

	for i=1, defence_dice do
		local defence_die = flr(rnd(6))
		if defence_die < d_dice_sides then 
			defence_hits += 1
		end
	end	
	gui.msg(d.name .. " rolls " .. defence_hits .. " defens")

	if attack_hits > defence_hits then
		local damage = attack_hits - defence_hits
		d.bp -= damage
		sfx(38)
		gui.msg(d.name .. " loses " .. damage .. " bp")
		
		if d.protection > 0 then
			d.protection = 0
			gui.msg(d.name .. "'s protect lost")
		end
		if d.bp > 0 then
			gui.msg(d.name .. " has " .. d.bp .. " bp left")

		elseif d.bp <= 0 then

			gui.msg(d.name .. " has been killed", function()
				d.alive = false
				--d.active = false
				end)
		end
	else
		if attack_hits == 0 then 
			sfx(32)
			gui.msg(a.name .. " misses")
		elseif d.protection > 0 then
			sfx(32)
			gui.msg(d.name .. " was protected")
		else
			sfx(33)
			gui.msg(d.name .. " dodged attack")
		end
	end

end 

function init_mission(num)

	rooms={}
	init_rooms_array()

	reload(0x2000, 0x2000, 0x1000)

	mission = get_mission(num)	

	mission.door_locations = parse_string_to_object(mission.door_locations, 2)

	for dl in all (mission.door_locations) do
		mset(dl[1], dl[2],48)
	end	

	mset(mission.end_tile[1]  , mission.end_tile[2]  , 64)
	mset(mission.end_tile[1]+1, mission.end_tile[2]  , 65)
	mset(mission.end_tile[1]  , mission.end_tile[2]+1, 80)
	mset(mission.end_tile[1]+1, mission.end_tile[2]+1, 81)

	actors[1].x = mission.starting_point[1]
	actors[1].y = mission.starting_point[2]
	actors[2].x = mission.starting_point[1] + 1
	actors[2].y = mission.starting_point[2]

	local p1 = actors[1]
	local p2 = actors[2]
	p1:reset()
	p2:reset()
	actors = {}
	add(actors,p1)
	add(actors,p2)

	actor_index = 1

	mission.enemies = parse_string_to_object(mission.enemies, 3)
	for en in all(mission.enemies) do
		local enemy = enemy:new()
		enemy:init(en)
		add(actors, enemy)
	end	

	mission.rocks = parse_string_to_object(mission.rocks, 2)
	for rk in all(mission.rocks) do
		mset(rk[1], rk[2],50)
	end	

	mission.chest_data = parse_string_to_object(mission.chest_data, 4)
	chests={}
	for ch in all (mission.chest_data) do
		local l_chest = chest:new()
		l_chest:init(ch[1], ch[2], ch[3], ch[4])
		add(chests, l_chest)
	end	

	reveal_rooms(actors[1].x, actors[1].y)
end

function parse_string_to_object(str, num_fields)
	ret = {}
	local temp_str = ""
	while #str > 0 do
		
		local obj = {}
		while #obj < num_fields do 
			local d=sub(str,1,1)		 	
		 	if d=="," or d == "|" then
				add(obj, temp_str+0)
				temp_str = ""
		 	elseif d!=" " then
				temp_str = temp_str .. d
		 	end
			str=sub(str,2)

		end
		add(ret, obj)		
	end
	return ret
end

function rooms_actor_is_in(actor)
	ret = {}
	for rm in all(rooms) do
		if cell_in_room(rm, actor.x, actor.y) then
			add(ret, rm)
		end
	end
	return ret
end

function reveal_rooms(x,y)
	for rm in all(rooms) do
		if cell_in_room(rm, x, y) then
			rm.visible = true
			for i=2, #actors do
				if cell_in_room(rm, actors[i].x, actors[i].y) then
					if actors[i].alive == true then
						actors[i].active = true
					end
				end
			end		
			for ch in all(chests) do
				if cell_in_room(rm, ch.x, ch.y) then
					ch.visible = true
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
if actors[i].x == x and actors[i].y == y and actors[i].alive == true then
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

function enemy:calcpath(player_num)
	
	local start = {self.x, self.y}
	local goal = {actors[player_num].x, actors[player_num].y}

	local frontier = {}
	local came_from = {}
	local cost_so_far = {}
	local goalfound = false
	local current = {}

	insert(frontier, start, 0)
	came_from[vectoindex(start)] = nil
	cost_so_far[vectoindex(start)] = 0
	
	while (#frontier > 0 and #frontier < 1000) do
		current = popend(frontier)
		
		if vectoindex(current) == vectoindex(goal) then
			goalfound = true
			break
		end

		local neighbours = getneighbours(current)
		
		for next in all(neighbours) do
			local nextindex = vectoindex(next)

			local new_cost = cost_so_far[vectoindex(current)]  + next[3]

			if (cost_so_far[nextindex] == nil) or (new_cost < cost_so_far[nextindex]) then
				cost_so_far[nextindex] = new_cost
				local priority = new_cost + heuristic(goal, next)
				insert(frontier, next, priority)

				came_from[nextindex] = current
			end 
		end
 	end
	
	if goalfound != true then
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

function vectoindex(vec)
return maptoindex(vec[1],vec[2])
end
function maptoindex(x, y)
return ((x+1) * map_w) + y
end

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

function heuristic(a, b)
return abs(a[1] - b[1]) + abs(a[2] - b[2])
end

function getneighbours(pos)
local neighbours={}
local x = pos[1]
local y = pos[2]

addneighbourtileif(neighbours, x-1, y)
addneighbourtileif(neighbours, x+1, y)
addneighbourtileif(neighbours, x, y-1)
addneighbourtileif(neighbours, x, y+1)

if (x+y) % 2 == 0 then
reverse(neighbours)
end
return neighbours
end

function addneighbourtileif(neighbours, x, y)
local obstructed = true
if x >= 0 and x < map_w and y >= 0 and y < map_h then
if mget(x, y) > wallid and mget(x, y) != 50 and mget(x,y) != 48 then				
obstructed = false						
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
0055006000000aa0007700040855000800000aa00078000000000000000000000000000000000000000000000000000000000000000000000000000000000000
05ff00600040aff007ff0040088f00080000a8f007ff000000000000000000000000000000000000000000000000000000000000000000000000000000000000
50ff00600604aff077ff004050f80880088888f08888880000000000000000000000000000000000000000000000000000000000000000000000000000000000
fd6d5ff00600555000555f00f8888ff00888555808888f0800000000000000000000000000000000000000000000000000000000000000000000000000000000
f6d6500000605f50005f5400f888888888885888088f880800000000000000000000000000000000000000000000000000000000000000000000000000000000
0d6d500000065550005550000d888880888885500888588000000000000000000000000000000000000000000000000000000000000000000000000000000000
05555000000055500055500088888880088885808855800000000000000000000000000000000000000000000000000000000000000000000000000000000000
0f00f0000000f0f000f0f0000f80f0000000f0800088f80000000000000000000000000000000000000000000000000000000000000000000000000000000000
300000030007770000033330005b5000004774000007777000000fff00000000300000030007770000033330005b5088004774000007778000000fff00088800
b30b30b300777770000c3c300bbbbb000441744000017170c00002ff0dd00dd0b30830b300888880088c3c300bb888000448784000088880c00008ff0d888dd0
bbbbbbb307117770000c3c30bbbbbbb044444444000777700c000fff08d008d0bb8888b30811788088088830b88bbbb044888484008878700c008f8f08d008d0
bb2b2bb307777117033dddd0b17b17b0444714440665555000c0000fddddddddbb8828b3877788178888d88081888888484714440888888000c08888dd8dd88d
1bbbbb300071777000bbbdd0bbbbbbb04411174400777750000c0fffd666666d188888308888887088b8888888bb88b8841188888888885000888888d888866d
01b11b0007777770000dddd0b8bbb8b041111114000555500000f555d000000d088888808888887008888dd0b8b888808188881488858850008888858888888d
001bb000050577000003003008111800447171440007007000000555d666666d008b88888808880000830888081818808878788880078080088888858888888d
0001100000500000003303300bbbbb00044444400007007000000f0fdddddddd0001108000500000003303300bbb8800048884400008807008888f0fdd888ddd
55000055111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000
51111115111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000
01000010111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000
01000010111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000
01000010111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000
01000010111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000
51111115111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000
55000055111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000
11154111154111115500005500000000000990000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
11544411154111115111111500000000055555500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
154444415444111101000010055555505aaaaaa50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
544444445444111101000010545445455aaaaaa50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
54444444544411110100001055599555555555550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
54444564545611110100001054544545545445450000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
54444444544411115111111554544545545445450000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
54444444544411115500005555555555555555550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
01000010011111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000011111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000001111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
10000001001111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
10000011001111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000011100111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000011100111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
10000001110011110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000100110011110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
10001100111001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00001110011100110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000111001110110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00010011101110010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
10011001100111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
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
00000077700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000777000000000000000000000000
00777770077000000000000000000000000000700000000000000000000000000000000000000000000000000000000000777000000000000000000000000000
7770000000770000000000000000000000000070000000000000000000000000088e000000000000000000000000007777000000000000000000000000000000
700000000007000000000000000000000000007700000000008880000000000888ee000000000000000000000077770700000000000000000000000000000000
07000000000700000000000000000000000000070000000770ee88000000088888ee000000000077777700007700000700000000000000000000000000000000
07700000000070000000000000000000000000070000000700ee88880000088888e8000077000770000777000000000070000000000000000000000000000000
00700000000070000000000000000000000000077000007000ee8888800088888880000707700700000077700000000070000000000000000000000000000000
00770000000070000000000000000000000000007000007000888888800088888870000700770700000000700000000070000000000000000000000000000000
00070000000070000000000000000000000000007000770000088888887888800070000700070700000000000000000077000000000000000000000000000000
00070000000770000000000000000000007770007007700000007000007000000070000700070700000000000000000007000000000000000000000000000000
00007000000700000000000077000007777770000707700000007000007000000077007700070700000000000000000007000000000000000000000000000000
00007000007700000000007770000777000700000770700000007000007700000007007000070770000000000000000007000000000000000000000000000000
00007000077000000000070000000000007700000700700000007000007700000007007000070077700000000000000007700000000000000000000000000000
00007007770000000077700000000000007000000700700000007000000700000007007000770000077700000000000000700000000000000000000000000000
00007777000007770007770007000000070000000700700000007000000700000007007007700000000777000000000000700000000000000000000000000000
00000700000077070000070070000000770000000700770000007000000700000007007777000000000000770000000000700000000000000000000000000000
00000700077700070000007700000000700000000700070000007000007070000007007000000000000000077000000000700000000000000000000000000000
00000700777000070000007000000000700000000700007000007700007070000007000700000770000000007000000000700000000000000000000000000000
00000700007000770000007000000007000000000700007000000700077007000070000770007000000000007000000000700000000000000000000000000000
00000770007007700000007007770007000000000700007700000070070007007700000070077000000000007000000000070000000000000000000000000000
00000070007077000000007777000077000000000700000700000077700000777000000007770000000000007000000000070000000000000000000000000000
00000070007777777770007700000070000000000700000070000000000000000000000000000000000000007000000000070000000000000000000000000000
00000070007000000077000000000700000077700700000077000000000000000000000000000000000000070000000000070000000000000000000000000000
00000070007000000000000000000777777770000700000007000000000000000000000000000770000000770000000000077000000000000000000000000000
00000070007000000000000000007700000000000770000000000000000000000000000000000007777777700000000000007000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000005555555500000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000555555555550000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000055557777777555500000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000555777999777755550000000000000000000000000000000000000000000000000000000000000000000000000
00000005555550000000000000000000000005557799999999777755000000000000000000000000000000000000000000000000000000000000000000000000
00005555555555550000000000000000000005579999999999999775500000000000000000000000000000000000000000000000000000000000000000000000
05555577777775555550000000000000000055779999999999999975500000000000000000000000000000000000000000000000000000000000000000000000
55557779999997577755000000000000000555799999999999999977550000000000000000000000555555550000000555555550000000000000000000000000
57779999999999799975500000000000000557799999977779999997550000000000005555550005555555555055555555555555000000000000000000000000
57799977779999799975500000000000000557999999755577999997555000005500555555555505777777755555555577777755000000000000000000000000
57799997579999799975500000000000555557999997755557799999755500555555557777777555799999775577777779999975500000000000000000000000
55799997779999799975500005555055555557999997555555779999755555577775577999997557999999997799999999999975500000000000000000000000
55799997799999777755055555555557777777999997550055579999777757799977779999999757999999997799999999999997550000000000000000000000
55799999999997555550555777777577999997799997500005579999799777999999799997999779999999999799999999999997550000000000000000000000
05779999999975555555577799997779999999799997500005579997999977999999799975799979999999999799997999999977550000000000000000000000
05579999999755577777579999999779999999979997550005579997999977999999799975799979999977797777777999997775550000000000000000000000
05579999977555579997579999999979999999979997555055579997999975799999779997999979999999777775557799997555500000000000000000000000
05579997775550579997799997779779777999979997755555799997999975579999979999997779999999999977555799997550000000000000000000000000
05577997555500577999799975557799757799979999775577999979999775579999979997777997797777999999755799999755000000000000000000000000
00557997555000557999799975557999755799979999977779999979999777779999979977557999775555799999755779999755000000000000000000000000
00557997550000057999799997777999777799979999999999999777999999999999779977577999777777799999975579999755000000000000000000000000
00557999750000057999799999999799999999979999999999999757999999999997799997779999799999999999975579999755000000000000000000000000
00557999755000057999779999999799999999979999999999997755799999999977999999999999799999999999755579997550000000000000000000000000
00557999755000057797777999999799999999779999999999977777577999999777999999999997799999999997755799997550000000000000000000000000
00557777775000055777555777777799999997777779999997779999755777777557799999999777777799999777555799997550000000000000000000000000
00555555555000005555555555555777777777555577777779999999977755555555777777777755555777777555505777777550000000000000000000000000
00055555550000000555000055555555555555555555557777799999999755555005555555555550055555555550005555555500000000000000000000000000
00000000000000000000000000000055555555055055555555777999977755000000555555555000000555555500000055500000000000000000000000000000
00000000000000000000000000000000000000000000005555555777755550000000000000000000000000000000000000000000000000000000000000000000
__label__
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
00000000000000000000000000000000000000000000000000000dddddddd0000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000ddddddddddd000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000dddd0000000dddd0000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000ddd000aaa0000dddd000000000000000000000000000000000000000000000000000000000000000
00000000000000000dddddd000000000000000000000000ddd00aaaaaaaa0000dd00000000000000000000000000000000000000000000000000000000000000
00000000000000dddddddddddd000000000000000000000dd0aaaaaaaaaaaaa00dd0000000000000000000000000000000000000000000000000000000000000
00000000000ddddd0000000dddddd00000000000000000dd00aaaaaaaaaaaaaa0dd0000000000000000000000000000000000000000000000000000000000000
0000000000dddd000aaaaaa0dd00dd000000000000000ddd0aaaaaaaaaaaaaaa00dd0000000000000000000000dddddddd0000000dddddddd000000000000000
0000000000d000aaaaaaaaa000a00dd00000000000000dd00aaaaaa0000aaaaaa0dd000000000000dddddd000dddddddddd0dddddddddddddd00000000000000
0000000000d00aaa0000aaaa0aaa00d00000000000000dd0aaaaaa0ddd00aaaaa0ddd00000dd00dddddddddd0d0000000ddddddddd000000dd00000000000000
0000000000d00aaaa000aaaa0aaa00d00000000000ddddd0aaaaa00dddd00aaaaa0ddd00dddddddd0000000ddd0aaaaa00dd0000000aaaaa0dd0000000000000
0000000000dd0aaaa000aaaa00a00dd0000dddd0ddddddd0aaaaa0dddddd00aaaa0dddddd0000dd00aaaaa0dd0aaaaaaaa00aaaaaaaaaaaa0dd0000000000000
0000000000dd0aaaa00aaaa00d00dd0dddddddddd0000000aaaaa0dd00ddd0aaaa0000d00aaa0000aaaaaaa0d0aaaaaaaa00aaaaaaaaaaaaa0dd000000000000
0000000000dd0aaaaaaaaaadddddd0ddd000000d00aaaaa00aaaa0d0000dd0aaaa0aa000aaaaaa0aaaa0aaa00aaaaaaaaaa0aaaaaaaaaaaaa0dd000000000000
00000000000d00aaaaaaaa0dddddddd000aaaa000aaaaaaa0aaaa0d0000dd0aaa0aaaa00aaaaaa0aaa0d0aaa0aaaaaaaaaa0aaaa0aaaaaaa00dd000000000000
00000000000dd0aaaaaaa0ddd00000d0aaaaaaa00aaaaaaaa0aaa0dd000dd0aaa0aaaa00aaaaaa0aaa0d0aaa0aaaaa000a0000000aaaaa000ddd000000000000
00000000000dd0aaaaa00dddd0aaa0d0aaaaaaaa0aaaaaaaa0aaa0ddd0ddd0aaa0aaaa0d0aaaaa00aaa0aaaa0aaaaaaa00000ddd00aaaa0dddd0000000000000
00000000000dd0aaa000ddd0d0aaa00aaaa000a00a000aaaa0aaa00ddddd0aaaa0aaaa0dd0aaaaa0aaaaaa000aaaaaaaaaaa00ddd0aaaa0dd000000000000000
00000000000dd00aa0dddd00d00aaa0aaa0ddd00aa0d00aaa0aaaa00dd00aaaa0aaaa00dd0aaaaa0aaa0000aa00a0000aaaaaa0dd0aaaaa0dd00000000000000
000000000000dd0aa0ddd000dd0aaa0aaa0ddd0aaa0dd0aaa0aaaaa0000aaaaa0aaaa00000aaaaa0aa00dd0aaa00dddd0aaaaa0dd00aaaa0dd00000000000000
000000000000dd0aa0dd00000d0aaa0aaaa0000aaa0000aaa0aaaaaaaaaaaaa000aaaaaaaaaaaa00aa00d00aaa0000000aaaaaa0dd0aaaa0dd00000000000000
000000000000dd0aaa0d00000d0aaa0aaaaaaa00aaaaaaaaa0aaaaaaaaaaaaa0d0aaaaaaaaaaa00aaaa000aaaa0aaaaaaaaaaaa0dd0aaaa0dd00000000000000
000000000000dd0aaa0dd0000d0aaa00aaaaaa00aaaaaaaaa0aaaaaaaaaaaa00dd0aaaaaaaaa00aaaaaaaaaaaa0aaaaaaaaaaa0ddd0aaa0dd000000000000000
000000000000dd0aaa0dd0000d00a0000aaaaa0aaaaaaaaa00aaaaaaaaaaa00000d00aaaaaa000aaaaaaaaaaa00aaaaaaaaaa00dd0aaaa0dd000000000000000
000000000000dd000000d0000dd000ddd0000000aaaaaaa000000aaaaaa000aaaa0dd000000dd00aaaaaaaa0000000aaaaa000ddd0aaaa0dd000000000000000
000000000000ddddddddd00000ddddddddddddd000000000dddd0000000aaaaaaaa000dddddddd0000000000ddddd000000dddd0d000000dd000000000000000
0000000000000dddd0000000000ddd0000dddddddddddddddddddddd00000aaaaaaaa0ddddd00dddddddddddd00dddddddddd000dddddddd0000000000000000
0000000000000000000000000000000000000000dddddddd0dd0dddddddd000aaaa000dd000000ddddddddd000000ddddddd000000ddd0000000000000000000
00000000000000000000000000000000000000000000000000000000ddddddd0000dddd000000000000000000000000000000000000000000000000000000000
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
00000000000000000000000000000000000000000000ddddd000000ddd00dd000000dd0ddd0ddd0ddd0ddd000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000dd0d0dd000000d00d0d00000d0000d00d0d0d0d00d0000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000ddd0ddd000000d00d0d00000ddd00d00ddd0dd000d0000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000dd0d0dd000000d00d0d0000000d00d00d0d0d0d00d0000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000ddddd0000000d00dd000000dd000d00d0d0d0d00d0000000000000000000000000000000000000000000
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
0000000000000000000000000000dddd0000660000000000000000000000000000aaaa0000000000000000000000777700000044000000000000000000000000
0000000000000000000000000000dddd0000660000000000000000000000000000aaaa0000000000000000000000777700000044000000000000000000000000
00000000000000000000000000ddffff00006600000000000000000000004400aaffff0000000000000000000077ffff00004400000000000000000000000000
00000000000000000000000000ddffff00006600000000000000000000004400aaffff0000000000000000000077ffff00004400000000000000000000000000
000000000000000000000000dd00ffff00006600000000000000000000660044aaffff0000000000000000007777ffff00004400000000000000000000000000
000000000000000000000000dd00ffff00006600000000000000000000660044aaffff0000000000000000007777ffff00004400000000000000000000000000
000000000000000000000000ffdd66ddddffff00000000000000000000660000dddddd0000000000000000000000ddddddff0000000000000000000000000000
000000000000000000000000ffdd66ddddffff00000000000000000000660000dddddd0000000000000000000000ddddddff0000000000000000000000000000
000000000000000000000000ff66dd66dd000000000000000000000000006600ddffdd0000000000000000000000ddffdd440000000000000000000000000000
000000000000000000000000ff66dd66dd000000000000000000000000006600ddffdd0000000000000000000000ddffdd440000000000000000000000000000
00000000000000000000000000dd66dddd000000000000000000000000000066dddddd0000000000000000000000dddddd000000000000000000000000000000
00000000000000000000000000dd66dddd000000000000000000000000000066dddddd0000000000000000000000dddddd000000000000000000000000000000
00000000000000000000000000dddddddd000000000000000000000000000000dddddd0000000000000000000000dddddd000000000000000000000000000000
00000000000000000000000000dddddddd000000000000000000000000000000dddddd0000000000000000000000dddddd000000000000000000000000000000
00000000000000000000000000ff0000ff000000000000000000000000000000ff00ff0000000000000000000000ff00ff000000000000000000000000000000
00000000000000000000000000ff0000ff000000000000000000000000000000ff00ff0000000000000000000000ff00ff000000000000000000000000000000
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
2121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120202020202020202020202020202021212020202020202020202020202020202121202020202020202020202020202020212120202020202020202020202020202021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120222222222023232323202424242021212023232320252525252022222222202121202222222220232323232024242420212120232323202525252520222222222021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120222222222023232323202424242021212023232320252525252022222222202121202222222220232323232024242420212120232323202525252520222222222021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120222222222023232323202424242021212023232320252525252022222222202121202222222220232323232024242420212120232323202525252520222222222021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120202020202020202020202424242021212023232320252525252022222222202121202020202020202020202024242420212120232323202525252520222222222021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120262626262029292929202424242021212023232320202020202020202020202121202626262620292929292024242420212120232323202020202020202020202021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120262626262029292929202020202021212020202020222222222027272727202121202626262620292929292020202020212120202020202222222220272727272021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120262626262029292929202121212121212121212120222222222027272727202121202626262620292929292021212121212121212121202222222220272727272021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120262626262029292929202120202020202020202120222222222027272727202121202626262620292929292021202020202020202021202222222220272727272021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120262626262029292929202120252525252525202120222222222027272727202121202626262620292929292021202525252525252021202222222220272727272021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120202020202020202020202120252525252525202120202020202020202020202121202020202020202020202021202525252525252021202020202020202020202021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212120252525252525202121212121212121212121212121212121212121212121212121202525252525252021212121212121212121212121000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120202020202020202020202120252525252525202120202020202020202020202121202020202020202020202021202525252525252021202020202020202020202021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120272727202424202525202120252525252525202120252525252022222222202121202727272024242025252021202525252525252021202525252520222222222021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120272727202424202525202120202020202020202120252525252022222222202121202727272024242025252021202020202020202021202525252520222222222021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120272727202424202525202121212121212121212120252525252022222222202121202727272024242025252021212121212121212121202525252520222222222021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120272727202020202020202020202021212020202020202525252022222222202121202727272020202020202020202020212120202020202025252520222222222021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120202020202323232323202222222021212023232323202020202020202020202121202020202023232323232022222220212120232323232020202020202020202021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120262626202323232323202222222021212023232323202222222029292929202121202626262023232323232022222220212120232323232022222220292929292021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120262626202323232323202222222021212023232323202222222029292929202121202626262023232323232022222220212120232323232022222220292929292021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120262626202323232323202222222021212023232323202222222029292929202121202626262023232323232022222220212120232323232022222220292929292021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120262626202323232323202222222021212023232323202222222029292929202121202626262023232323232022222220212120232323232022222220292929292021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2120202020202020202020202020202021212020202020202020202020202020202121202020202020202020202020202020212120202020202020202020202020202021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212121212121212121212121212121212121212121212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212121212121212121212121212121212121212121212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212121212121212121212121212121212121212121212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212121212121212121212121212121212121212121212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212121212121212121212121212121212121212121212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212121212121212121212121212121212121212121212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2121212121212121212121212121212121212121212121212121212121212121212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
011a00000c7150c7150c7150c7150f7150f7150f7150f715117151171511715117150d7150d7150d7150d7150c7150c7150c7150c7150f7150f7150f7150f715117151171511715107150d7150d7150d7150d715
011a00000076500765007650076503765037650376503765057650576505765057650176501765017650176500765007650076500765037650376503765037650576505765057650476501765017650176501765
011a00001c5141c5121c5121c5151e5141e5121e5121e515245142451224512245151d5141d5121d5121d5151c5141c5121c5121c5151e5141e5121e5121e5152451424512245122451529514295122951229515
011a00001c5141c5121c5121c5151e5141e5121e5121e515245142451224512245151d5141d5121d5121d5122451424512245122451224512245122451224512185171b5171f5172451723511215111f5111d511
011a0000245102452024510245202751027520275102752025510255202551025520195101952019510195201c5101c5201c5101c520225102252022510225201f5101f5201f5101f52020510205202051020520
011a00001c2141c2221c2121c2251e2141e2221e2121e225242142422224212242251d2141d2221d2121d2251c2141c2221c2121c2251e2141e2221e2121e2252421424222242122422529214292222921229225
001a00000425004230042300422004250042300422004250042200422004220042400422004220042200421004220042200422004220042400422004220042200524005250052500524006240062500725000000
011a00000c7730c7230c7730c72323623236130c7230c7230c7730c7230c7730c72323623236130c7230c7230c7730c7230c7730c72323623236130c7230c7230c7730c7230c7730c72323623236130c7230c723
011a00002452627526295262b5262452627526295262b5262452627526295262b5262952629526295262b52629526275262552624526295262752625526245262952627526255262452629526295262952627526
0110000024415244152440024400244002440024400244101e4111e4101e4151e4151e4151e4151e4151e4151e4151e4151e4151e4151e4051e4051e405000000000000000000000000000000000000000000000
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
011000001862418611186151f6001b6000a6000260002600026000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
011100001861418625127001170011700127001370016700177001770000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
011000002561300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
010f00001854418555186050000010755127551475516755187550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
011000002853726537245372253728537265372453722537245312253124531225352253522535000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
010700000d5450c5550c5450d5551054513555165451a5551e5451f55500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0109000022333163331733323303233032330323303233032230321303203031c3031a30300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
010500003054031540000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
010800003054037540000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
010400000044000441014410244103441044410544100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
010700001a235002001a2301a2311a235000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
011000002454728547295472b54730542305420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
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
01 08414207
00 00010207
00 00010307
00 00010407
00 00010407
00 41420407
00 41050407
02 41020407
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

