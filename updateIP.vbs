set ws=WScript.CreateObject("WScript.Shell") 
ws.Run "cmd /c ip.bat",0

wscript.sleep 1000*3

Dim fso,f,a
Set fso = CreateObject("Scripting.FileSystemObject")
Set f=fso.OpenTextFile("ip.txt",1)
DO While f.AtEndOfStream <> True
	a=f.ReadLine 
	'msgbox a
	url = "https://ipv4.cloudns.net/api/dynamicURL/?q=MjIwMTg4NDoxODI3Mzg1MDY6OTg0ZjE3NzBkYTI3YjYwODU2M2YyMmYwM2JlYjE1OGE5NGMyYjM2ZmU3ODg3NjViYzE2ZmZiZjk3OTE0MTY3Mg&ip="&a
	'msgbox url
	Set xmlhttp = WScript.CreateObject("Microsoft.XMLHttp")
	xmlhttp.open "POST", url , False
	xmlhttp.send "<?xml version='1.0'?><message><priority>0</priority></message>"
                'msgbox "³É¹¦"
loop