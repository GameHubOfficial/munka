--// Blue Country MTA
--// Writed by: #KS

local kepX,kepY = guiGetScreenSize() --// Felbontás lekérése
local name = getPlayerName() --// Név
local ping = getPlayerPing() --// Ping
local prefix = "#6CAD39" 

local widgets = {

    --// A widgetek még nem véglegesek! - #KS
	{"HUD", "enabled", "kepX", "kepY", 1, 20} --// Bekapcsolva
	{"Radar", "enabled", "kepX", "kepY", 1, 20} --// Bekapcsolva
	{"FPS", "enabled", "kepX", "kepY", 1, 20} --// Bekapcsolva 
	{"BlueCoin", "disabled", "kepX", "kepY", 0, 0} --// Kikapcsolva
	{"Ping", "disabled", "kepX", "kepY", 0, 0} --// Kikapcsolva
	{"Name", "enabled", "kepX", "kepY", 1, 20} --// Bekapcsolva
	{"Szint", "enabled", "kepX", "kepY", 1, 20}

}

function widgetDx()
	dxDrawRectangle( kepX/3.8, kepY/3.8, kepX/2.02, kepY/2, tocolor ( 0, 0, 0, 150 ))
end
addEventHandler("onClientRender", root, widgetDx)

--// Sikeres hozzáadás

function siker()
	outputChatBox("#6CAD39[Siker!] #ffffffSikeresen hozzá adtad a kiegészítőtt!", source, 255, 255, 255)
end

--// Sikertelen

function sikertelen()
	outputChatBox("#6CAD39[Hiba!] #ffffffSikertelen hozzá adás!", source, 255, 255, 255)
end