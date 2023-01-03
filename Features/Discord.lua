-- You Can Take It If You Want :P

local httpRequest

if syn and syn.request then
	httpRequest = syn.request
elseif request then
	httpRequest = request
elseif http and http.request then
	httpRequest = http.request
elseif http_request then
	httpRequest = http_request
elseif fluxus and fluxus.request then
	httpRequest = fluxus.request
elseif Fluxus and Fluxus.request then
	httpRequest = Fluxus.request
end


for i = 6453,6464 do
	local DiscordInviteRequest = function()
		local Request = httpRequest({
			Url = string.format('http://127.0.0.1:%s/rpc?v=1', tostring(i)),
			Method = "POST",
			Body = game:GetService("HttpService"):JSONEncode({
				nonce = game:GetService("HttpService"):GenerateGUID(false),
				args = {
					invite = {code = 'GAAVvwzCqx'},
					code = 'GAAVvwzCqx' -- < Add Your Invite Code Here :/
				},
				cmd = "INVITE_BROWSER"
			}),
			Headers = {
				["Origin"] = "https://discord.com",
				["Content-Type"] = "application/json"
			}
		})
	end spawn(DiscordInviteRequest)
end
