function onCreate()
	

	setProperty('camHUD.alpha', 0)
	
	makeLuaSprite('wtf', 'thingys/wtf', -50, 0);
	addLuaSprite('wtf', false);
	scaleObject('wtf', 2.8, 2.8);
	setObjectCamera('wtf', 'other');
	setProperty('wtf.alpha', 0)
	
	makeLuaSprite('thing', 'stages/RAH', -300, -300);
	setLuaSpriteScrollFactor('thing', 1, 1);
	addLuaSprite('thing', false);
	scaleObject('thing', 1.5, 1.5);
	
	makeLuaSprite('thing2', 'stages/rah but coooler', -300, -300);
	setLuaSpriteScrollFactor('thing2', 1, 1);
	addLuaSprite('thing2', true);
	scaleObject('thing2', 1.5, 1.5);

	
end

function onCreatePost()--this thing happens once the characters are spawned

end

function onEvent(name, value1, value2)
	if value1 == 'meme' then
	
		if value2 == 'wtf' then
			setProperty('wtf.alpha', 1)
			doTweenAlpha('fadeoutwtf', 'wtf', 0, 2, 'easeOut')
		end
	end
end