;Lines starting with a ; are comments and are not part of the actual script.
;If you want to deactivate a flask press(e.g. because it is your hp flask) simply add a ; to the start of the line

;this line makes the script only work when Path of Exile is the active window
#IfWinActive, ahk_class POEWindowClass

F8::Suspend, Toggle
~'::
{
	;Initialize random delays between 20 and 180 ms (arbitrary values, may be changed)
	random, delay1, 20, 130
	random, delay2, 20, 130
	random, delay3, 20, 150
	random, delay4, 30, 140
	random, delay5, 20, 180


	sleep, %delay3%
	send, 3 ;simulates the keypress of the 3 button. If you use another button, change it!


	sleep, %delay5%
	send, 5 ;simulates the keypress of the 5 button. If you use another button, change it!
	
	Sleep, 3600
}
return