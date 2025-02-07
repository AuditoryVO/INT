;Adrián García Riber bounds(0, 0, 0, 0)
;2023
<Cabbage>
form caption("Graphical Display") size(690, 400), colour(255, 255, 255), pluginID("Graphical Display")
image bounds(28, 2, 637, 398) identchannel("Image") corners(10) file("Display.png") 


</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
; Initialize the global variables. 
sr = 48000
ksmps =32
nchnls = 2
0dbfs = 1


gks init 0
gkplay init 0
gifrec init 0

gktrig init 0

gkTeff init 0
gkMetal init 0
gkRadius init 0
gkfP init 0

gkAmp init 0
gkDepth init 0


gkDur init 0
gkLogg init 0

gkRa init 0
gkDec init 0
gkSec init 0
gkTess init 0

#define IPADDRESS	# "localhost" #
#define PORT 		# 1337 #


instr 1

giosc_s OSCinit 9989

endin

instr 2

kans_graph OSClisten giosc_s, "/s", "f", gks


if gks!=0 then
	
	Scurve sprintfk "file(%s)", "Display.png"
    chnset Scurve, "Image"
    giImage imageload "Display.png"

elseif gks==0 then
    Scurve sprintfk "file(%s)", "Init_DVT.png"
	chnset Scurve, "Image"	
	imagefree giImage
			
endif

endin


</CsInstruments>
<CsScore>
;f 1 0 1024 10 1

i 1 0 3600*24*7
i 2 0 3600*24*7

e

</CsScore>
</CsoundSynthesizer>
