local TweenService = game:GetService("TweenService")
local Sounds = script:WaitForChild("Sounds") -- script:WaitForChild("sua pasta de música.") 

local function play(name, volume) -- toca a música com tween service.
	local sound : Sound = Musics:WaitForChild(name) -- nome da música.
	sound.Volume = 0

	local tween = tweenService:Create(sound, TweenInfo.new(15), {Volume = volume}) -- tweenService:Create(música, TweenInfo.new(velocidade), {Volume = volume}) 

	sound:Play()

	task.wait(5)
	tween:Play()
end

local function stop(name) -- finaliza a música com tween service
	local sound : Sound = musics:WaitForChild(name) -- nome da musica

	local tween = tweenService:Create(sound, TweenInfo.new(15), {Volume = 0}) -- tweenService:Create(música, TweenInfo.new(velocidade), {Volume = volume que vai parar}) 

	tween:Play()

	tween.Completed:Connect(function() -- quando completar o tween, parar a música.
		sound:Stop()
	end)
end

wait(3)
play("Sound", 0.25) -- play("nome da música que quer tocar", volume total) 

wait(50) -- total de segundos que vai esperar antes de parar a música.

stop("Sound") -- stop("nome da música que quer parar")

