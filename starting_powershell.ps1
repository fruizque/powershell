#start-process -filepath "C:\Program Files (x86)\Google\Chrome\Application\Chrome.exe" -ArgumentList "https://www.netflix.com/browse"
#start-process -filepath "D:\Programs\Steam\Steam.exe"
#start-process -filepath "D:\Programs\Battle.net\Battle.net.exe"

function open-store {
start-process -filepath "D:\Programs\Steam\Steam.exe"
start-process -filepath "D:\Programs\Battle.net\Battle.net.exe"
start-process -filepath "D:\Programs\Origin\Origin.exe"
start-process -filepath "D:\Programs\Epic Games\Launcher\Portal\Binaries\Win32\EpicGamesLauncher.exe"
}

function open-moonlighter {
start-process -filepath "D:\Juegos\Moonlighter\Moonlighter.exe"
}