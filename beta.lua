if (getgenv().UC_LOADED) then
	return;
end;
getgenv().UC_LOADED = true;

if (game.GameId == 1008451066) then
  loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/e15033fd74a9b2664dc7b85699c78b69.lua"))();
end;
