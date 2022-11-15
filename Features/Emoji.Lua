-- > It’s open source your not cool for stealing it or leakeing < --

local StarId = {}

local CrownId = {}

function Premium()
	for _,v in pairs(game:GetService('Players'):GetChildren()) do
		if StarId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]'..v.DisplayName)
				end
			end
		elseif CrownId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]'..v.DisplayName)
				end
			end
			if v.Character.Parent.Name == 'Players' then
				if not v.Character.UpperTorso.BodyBackAttachment:FindFirstChild('OriginalPosition') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😆]'..v.DisplayName)
				end
			end
		end
	end
end
local success,err = pcall(Premium)
return StarId
