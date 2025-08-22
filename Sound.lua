local tweenService = game:GetService("TweenService")
local musics = script:WaitForChild("Musics")

local function play(name, volume) -- toca a música com tween service
	local sound : Sound = musics:WaitForChild(name)
	sound.Volume = 0

	local tween = tweenService:Create(sound, TweenInfo.new(15), {Volume = volume})

	sound:Play()

	task.wait(5)
	tween:Play()
end

local function stop(name) -- finaliza a música com tween service
	local sound : Sound = musics:WaitForChild(name)

	local tween = tweenService:Create(sound, TweenInfo.new(15), {Volume = 0}) 

	tween:Play()

	tween.Completed:Connect(function()
		sound:Stop()
	end)
end

wait(3)
play("Sound", 0.25) -- função

wait(50)
stop("Sound") -- função