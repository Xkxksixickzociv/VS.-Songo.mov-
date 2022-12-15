local variable = false;
local variable2 = false;
function onBeatHit(elapsed)

	if turnmeon == true then
		triggerEvent('Add Camera Zoom','0.1','0.03')	
	end
	
	if turnmeon2 == true then
		if variable == false then
			triggerEvent('Add Camera Zoom','0.1','0.03')
		  variable = true
		  		  
		elseif variable == true then
		  variable = false
	
		end
	end
	
	if flashingLights == true then
	
		if flashbeat == true then
			if variable2 == false then
			  variable2 = true
				setProperty("red.color", getColorFromHex('ff0000'))
				doTweenAlpha('red1', 'red', 0.4, 0.0000001, 'expoIn')
			elseif variable2 == true then
			  variable2 = false
				setProperty("red.color", getColorFromHex('0000ff'))
				doTweenAlpha('red1', 'red', 0.4, 0.0000001, 'expoIn')
			end
		end
	end
	
	if ihatenamingthings == true then
		triggerEvent('Add Camera Zoom','0.1','0.03')	
	end
end



function onEvent(name, value1, value2)
	if value1 == 'Beat' then
		if value2 == '1' then
			turnmeon = true;
			turnmeon2 = false;
		end
		if value2 == '2' then
			turnmeon2 = true;
			turnmeon = false;
		end
		if value2 == 'False' then
			turnmeon = false;
			turnmeon2 = false;
		end
	end
	
	if value1 == 'Zoom' then
			setProperty('defaultCamZoom', value2)
	end
	
	if value1 == 'HideHud' then
		if value2 == 'True' then
			doTweenAlpha('turnhudoff', 'camHUD', 0, 0.14812, 'easeOut')
		end
		if value2 == 'Partial' then
			doTweenAlpha('turnhudkindaoff', 'camHUD', 0.5, 0.14812, 'easeOut')
		end
		if value2 == 'False' then
			doTweenAlpha('turnhudon', 'camHUD', 1, 0.14812, 'easeOut')
		end
	end
	
	if value1 == 'Flash' then
		if value2 == 'True' then
			flashbeat = true;
		end
		if value2 == 'False' then
			flashbeat = false;
		end
	end
	
	
end

function onTweenCompleted(tag)
if tag == 'red1' then
 doTweenAlpha('red', 'red', 0.2, 0.3, 'easeOut')
end
if tag == 'blue1' then
 doTweenAlpha('blue', 'blue', 0.2, 0.3, 'easeOut')
end
end

