function onCreatePost()
	--Vanilla UI stuff
	--setProperty('scoreTxt.visible', false)
	setProperty('timeBar.visible', true)
	setProperty('timeBarBG.visible', true)
	setProperty('timeBarBG.color', 'c900ed')
	--setProperty('timeTxt.visible', false)
	setTextString('botplayTxt', 'FUCKING\nCHEATER');
	--end
	makeLuaText('sicks', 'Sicks: ' .. getProperty('sicks'), 200, 0, 355);
	makeLuaText('goods', 'Goods: ' .. getProperty('goods'), 200, 0, 380);
	makeLuaText('bads', 'Bads: ' .. getProperty('bads'), 200, 0, 405);
	makeLuaText('shits', 'Shits: ' .. getProperty('shits'), 200, 0, 430);
	--makeLuaText('misses', 'Misses: ' .. getProperty('songMisses'), 200, 0, 455);
	setTextSize('sicks', 18)
	setTextSize('goods', 18)
	setTextSize('bads', 18)
	setTextSize('shits', 18)
	--setTextSize('misses', 18)
	setTextAlignment('sicks', 'left')
	setTextAlignment('goods', 'left')
	setTextAlignment('bads', 'left')
	setTextAlignment('shits', 'left')
	--setTextAlignment('misses', 'left')
	addLuaText('sicks');
	addLuaText('goods');
	addLuaText('bads');
	addLuaText('shits');
	--addLuaText('misses');

	
	--Text Colors end
	makeLuaText('combo', 'Combo: ' .. getProperty('combo'), 200, 0, 455); --Orignal was 480
	setTextAlignment('combo', 'left')
	addLuaText('combo');
	setTextSize('combo', 18)
	
	--New Hud Shit
	makeLuaText('song name', (songName), 512, 10, 690)
	addLuaText('song name')
	
	setTextAlignment('song name', 'left')
	
	--if songName == 'Why wont this shit work without these 5 lines' then
	--	setTextString('song name', '')
	--end

	setTextSize('song name', 16)
	--setTextString('song name', (songName))
	--New Hud End
	
	if songName == 'Too Slow Encore' then
		makeLuaText('Diff', 'Too Slow Encore - ', 512, 10, 690)
		addLuaText('Diff')
		setTextSize('Diff', 16)
		setTextAlignment('Diff', 'left')
		
		   if difficulty == 0 then
			setTextString('Diff', 'Too Slow Encore - Baby')
			elseif difficulty == 1 then
			setTextString('Diff', 'Too Slow Encore - Hardnt')
			elseif difficulty == 2 then
			setTextString('Diff', 'Too Slow Encore - Encore')
			elseif difficulty == 3 then
			setTextString('Diff', 'Too Slow Encore - Flipped')
			elseif difficulty == 4 then
			setTextString('Diff', 'Too Slow Encore - New')
				end
			end
	

function onRecalculateRating()
	setTextString('sicks', 'Sicks: ' .. getProperty('sicks'));
	setTextString('goods', 'Goods: ' .. getProperty('goods'));
	setTextString('bads', 'Bads: ' .. getProperty('bads'));
	setTextString('shits', 'Shits: ' .. getProperty('shits'));
	--setTextString('misses', 'Misses: ' .. getProperty('songMisses'));
	setTextString('combo', 'Combo: ' .. getProperty('combo'));
	setTextString('rating', 'Rating: ' .. getProperty('ratingName'));
	setTextString('score', 'Score:' .. score)
end
end

function onUpdatePost()
    if hits < 1 then
        setProperty('scoreTxt.text', 'Score: 0 | Combo Breaks: 0 | Accuracy: ?')
    elseif misses < 1 then
        setProperty('scoreTxt.text', 'Score: ' .. score .. ' | Combo Breaks: ' .. misses .. ' | Accuracy: ' ..  round(rating * 100, 2) .. '% [' .. ratingFC .. ']')
    else
        setProperty('scoreTxt.text', 'Score: ' .. score .. ' | Combo Breaks: ' .. misses .. ' | Accuracy: ' ..  round(rating * 100, 2) .. '%')
    end
end

function round(x, n) --https://stackoverflow.com/questions/18313171/lua-rounding-numbers-and-then-truncate
    n = math.pow(10, n or 0)
    x = x * n
    if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end