bam = 1 --?
idle = true

--FAZZdotFLA my discord 

-- Diamond Tiara
idleoffsets = {'0', '0'}
leftoffsets = {'-2', '2'}
downoffsets = {'2', '-7'}
upoffsets = {'-12', '10'}
rightoffsets = {'-5', '-3'}
mineoffsets = {'3', '8'}
blank1offsets = {'0', '14'}
blank2offsets = {'0', '14'}

--Silver Spoon
idleoffsetsSilver = {'0', '0'}
mineoffsetsSilver = {'49', '35'}
blank1offsetsSilver = {'0', '21'}
blank2offsetsSilver = {'0', '21'}
idlesilverSpoon = true

--Babs
backoutoffsets = {'615', '174'}

function onCreatePost()
setProperty('cameraSpeed', 2)
setProperty('timeTxt.visible', false)
setProperty('timeBar.visible', false)
setProperty('timeBarBG.visible', false)
--setProperty('androidc.visible', false)
--setProperty('camHUD.visible', false)
--setProperty('dad.x', 90)
--setProperty('dad.y', -69.2)
setProperty('boyfriend.x', 991.75)
setProperty('boyfriend.y', 202)
setProperty('boyfriend.angle', 8.6937)
--setProperty('gf.x', 855.55)
--setProperty('gf.y', 198)
--setProperty('gf.visible', false)
setProperty('gf.angle', 8.6937)
setScrollFactor('gf', 0.7, 0.7)
setScrollFactor('dad', 1.1, 1.1)
setScrollFactor('boyfriend', 0.7, 0.7)
setProperty('health',0.01)
end
function onCreate()
	makeLuaSprite('sky', 'sky', 0, -532)
	loadGraphic('sky','sky')
	setProperty('sky.antialiasing', true)
	setScrollFactor('sky', 0, 0.3)
	addLuaSprite('sky', false)

	makeLuaSprite('treebg', 'treebg', 830.25, -56)
	loadGraphic('treebg','treesbg')
	setProperty('treebg.antialiasing', true)
	setScrollFactor('treebg', 0.5, 0.5)
	addLuaSprite('treebg', false)

	makeLuaSprite('ground', 'ground', -122.65, -62.2)
	loadGraphic('ground','ground')
	setProperty('ground.antialiasing', true)
	setScrollFactor('ground', 0.7, 0.7)
	addLuaSprite('ground', false)

	makeLuaSprite('trees', 'trees', -128, -500)
	loadGraphic('trees','trees')
	setProperty('trees.antialiasing', true)
	setScrollFactor('trees', 0.7, 0.7)
	addLuaSprite('trees', false)

	makeAnimatedLuaSprite('sweetiebelle', 'sweetiebelle', 1088, 253)
	loadFrames('sweetiebelle','sweetiebelle') --idk what is this for
	addAnimationByPrefix('sweetiebelle','idle','sweetiebelle',24,false)
	setProperty('sweetiebelle.antialiasing', true)
	setScrollFactor('sweetiebelle', 0.7, 0.7)
	setProperty('sweetiebelle.angle', 8.6937)
	addLuaSprite('sweetiebelle', true)

	makeLuaSprite('house', 'house', -199, 282)
	loadGraphic('house','house')
	setProperty('house.antialiasing', true)
	setScrollFactor('house', 1.1, 1.1)
	addLuaSprite('house', false)


makeAnimatedLuaSprite('tiara','characters/tiara',-102,25)
addAnimationByPrefix('tiara', 'idle', 'tiara idle', 24, true)
addAnimationByPrefix('tiara', 'singLEFT', 'tiara left', 24, false)
addAnimationByPrefix('tiara', 'singDOWN', 'tiara down', 24, false)
addAnimationByPrefix('tiara', 'singUP', 'tiara up', 24, false)
addAnimationByPrefix('tiara', 'singRIGHT', 'tiara right', 24, false)
addAnimationByPrefix('tiara', 'blank1', 'tiara blank1', 24, false) -- this annoyed me for some reason ;-; i hope they lose it 
addAnimationByPrefix('tiara', 'blank2', 'tiara blank2', 24, false)
addAnimationByPrefix('tiara', 'slidein', 'tiara slidein', 24, false)
addAnimationByPrefix('tiara', 'mine', 'tiara mine', 24, false)
addLuaSprite('tiara', false)

makeAnimatedLuaSprite('spoon','characters/spoon',129.3,54.85)
addAnimationByPrefix('spoon', 'idle', 'silver idle', 24, false)
addAnimationByPrefix('spoon', 'blank1', 'silver blank1', 24, false) -- this annoyed me for some reason ;-;
addAnimationByPrefix('spoon', 'blank2', 'silver blank2', 24, false)
addAnimationByPrefix('spoon', 'slidein', 'silver slidein', 24, false)
addAnimationByPrefix('spoon', 'mine', 'silver mine', 24, false)
addLuaSprite('spoon', false)

scaleObject('spoon',0.88, 0.88)

end

function onSongStart()
     setProperty('tiara.visible', false)
     setProperty('spoon.visible', false)
end

function onUpdate(elapsed)
if getProperty('dad.animation.curAnim.name') == 'goback' and getProperty('dad.animation.curAnim.finished') then
    setProperty('dad.visible', false)
    setProperty('dad.offset.x', backoutoffsets[1]);
    setProperty('dad.offset.y', backoutoffsets[2]);
end
if getProperty('dad.animation.curAnim.name') == 'goback' then
    setProperty('dad.offset.x', backoutoffsets[1]);
    setProperty('dad.offset.y', backoutoffsets[2]);
    setProperty('dad.specialAnim', true)
end
if getProperty('dad.animation.curAnim.name') == 'jumpin' then
     setProperty('dad.visible', true)
end
if getProperty('tiara.animation.curAnim.name') == 'singLEFT' and getProperty('tiara.animation.curAnim.curFrame') == 6 then
    idle = true;
end
if getProperty('tiara.animation.curAnim.name') == 'singDOWN' and getProperty('tiara.animation.curAnim.curFrame') == 6 then
    idle = true;
end
if getProperty('tiara.animation.curAnim.name') == 'blank1' and getProperty('tiara.animation.curAnim.curFrame') == 30 then
    idle = true;
end
if getProperty('tiara.animation.curAnim.name') == 'blank2' and getProperty('tiara.animation.curAnim.curFrame') == 15 then
    idle = true;
end
if getProperty('tiara.animation.curAnim.name') == 'singUP' and getProperty('tiara.animation.curAnim.curFrame') == 6 then
    idle = true;
end
if getProperty('tiara.animation.curAnim.name') == 'singRIGHT' and getProperty('tiara.animation.curAnim.curFrame') == 6 then
    idle = true;
end
if getProperty('tiara.animation.curAnim.name') == 'mine' and getProperty('tiara.animation.curAnim.finished') then
    idle = true;
end
if getProperty('spoon.animation.curAnim.name') == 'blank1' and getProperty('spoon.animation.curAnim.curFrame') == 29 then
    idlesilverSpoon = true;
end
if getProperty('spoon.animation.curAnim.name') == 'blank2' and getProperty('spoon.animation.curAnim.curFrame') == 16 then
    idlesilverSpoon = true;
end
if getProperty('spoon.animation.curAnim.name') == 'mine' and getProperty('spoon.animation.curAnim.finished') then
    idlesilverSpoon = true;
end
end
function onBeatHit()
if idle == true then
    objectPlayAnimation('tiara','idle',true)
    setProperty('tiara.offset.x', idleoffsets[1]);
    setProperty('tiara.offset.y', idleoffsets[2]);
    end
if idlesilverSpoon then
     objectPlayAnimation('spoon','idle',true)
     setProperty('spoon.offset.x', idleoffsetsSilver[1]);
     setProperty('spoon.offset.y', idleoffsetsSilver[2]);
     end
	objectPlayAnimation('sweetiebelle','idle',true)
	
	if curBeat == 301 then
		setProperty('dad.x', 90)
		setProperty('dad.specialAnim', false)
		characterPlayAnim('dad','jumpin', true)
	end
	if curBeat == 303 then
		setProperty('dad.specialAnim', false)
	end
	if curBeat == 264 then
		setProperty('tiara.visible', true)
        setProperty('spoon.visible', true)
	end
	if curBeat == 267 then
		setProperty('defaultCamZoom',1)
		setProperty('dad.x',-30)
	end
	if curBeat == 268 then
		objectPlayAnimation('tiara','blank1', true)
		objectPlayAnimation('spoon','blank1',true)
		idlesilverSpoon = false
        idle = false
       setProperty('tiara.offset.x', blank1offsets[1]);
        setProperty('tiara.offset.y', blank1offsets[2]);
        setProperty('spoon.offset.x', blank1offsetsSilver[1]);
        setProperty('spoon.offset.y', blank1offsetsSilver[2]);
		
	end
	if curBeat == 272 then
		objectPlayAnimation('spoon','idle',true)
		
	end


		if curBeat % 1 == 0 and curBeat > 64 and curBeat < 140 then 
          triggerEvent("Add Camera Zoom",0.015,0.03)
	end
		if curBeat % 4 == 0 and curBeat == 140 and curBeat < 144 then 
          triggerEvent("Add Camera Zoom",0.015,0.03)
	end--setVar('camBoomSpeed',4)
	    if curBeat % 1 == 0 and curBeat > 144 and curBeat < 268 then 
          triggerEvent("Add Camera Zoom",0.015,0.03)
	end
        if curBeat % 4 == 0 and curBeat == 268 and curBeat < 272 then 
          triggerEvent("Add Camera Zoom",0.015,0.03)
	end--
		if curBeat % 1 == 0 and curBeat > 272 and curBeat < 368 then 
          triggerEvent("Add Camera Zoom",0.015,0.03)
	end
		if curBeat % 60 == 0 and curBeat == 368 then 
          triggerEvent("Add Camera Zoom",0.015,0.03)
	end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Tiara' and direction == 0 then --messy right?
objectPlayAnimation('tiara','singLEFT',true) 
idle = false 
setProperty('tiara.offset.x', leftoffsets[1]);
setProperty('tiara.offset.y', leftoffsets[2]);
runTimer('doIdle', dadSingTimer) end
	if noteType == 'Tiara' and direction == 2 then 
objectPlayAnimation('tiara','singUP',true) 
setProperty('tiara.offset.x', upoffsets[1]);
setProperty('tiara.offset.y', upoffsets[2]);
idle = false 
runTimer('doIdle', dadSingTimer) end
	if noteType == 'Tiara' and direction == 1 then 
objectPlayAnimation('tiara','singDOWN',true)
setProperty('tiara.offset.x', downoffsets[1]);
setProperty('tiara.offset.y', downoffsets[2]);
 idle = false 
runTimer('doIdle', dadSingTimer) end
	if noteType == 'Tiara' and direction == 3 then
 objectPlayAnimation('tiara','singRIGHT',true)
 setProperty('tiara.offset.x', rightoffsets[1]);
setProperty('tiara.offset.y', rightoffsets[2]);
idle = false 
runTimer('doIdle', dadSingTimer) 

	end
	if noteType == 'Blank2' then
	--singTimer[2] = math.floor(60*laps)
	--singTimer[3] = math.floor(60*laps) idk what the hell is this for
		objectPlayAnimation('tiara','blank2', true)
		objectPlayAnimation('spoon','blank2', true)
		idlesilverSpoon = false
        idle = false
         setProperty('tiara.offset.x', blank2offsets[1]);
        setProperty('tiara.offset.y', blank2offsets[2]);
        setProperty('spoon.offset.x', blank2offsetsSilver[1]);
        setProperty('spoon.offset.y', blank2offsetsSilver[2]);

	end
	if noteType == 'Blank1' then
	--singTimer[2] = math.floor(120*laps)
	--singTimer[3] = math.floor(120*laps)
		objectPlayAnimation('tiara','blank1', true)
		objectPlayAnimation('spoon','blank1', true)
		idlesilverSpoon = false
        idle = false
        setProperty('tiara.offset.x', blank1offsets[1]);
        setProperty('tiara.offset.y', blank1offsets[2]);
        setProperty('spoon.offset.x', blank1offsetsSilver[1]);
        setProperty('spoon.offset.y', blank1offsetsSilver[2]);
	end
	if noteType == 'spoonMine' then
		--singTimer[3] = math.floor(100*laps)
		objectPlayAnimation('spoon','mine', true)
         idlesilverSpoon = false
         idle = false
        setProperty('spoon.offset.x', mineoffsetsSilver[1]);
        setProperty('spoon.offset.y', mineoffsetsSilver[2]);
   
	end
	if noteType == 'tiaraMine' then
		--singTimer[2] = math.floor(100*laps)
		objectPlayAnimation('tiara','mine', true)
       idlesilverSpoon = false
       idle = false
       setProperty('tiara.offset.x', mineoffsets[1]);
        setProperty('tiara.offset.y', mineoffsets[2]);
	end
end
function onMoveCamera(focus)
	if focus == 'dad' then
       setProperty('defaultCamZoom',1)
    elseif focus == 'boyfriend' then
        setProperty('defaultCamZoom',1.3)
    elseif focus == 'gf' then
        setProperty('defaultCamZoom',1.3)
        cameraSetTarget('boyfriend') --appleBloom
end
end