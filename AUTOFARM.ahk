F1::
work()
return

F2::
ExitApp


Coordmode, Mouse, Client
Coordmode, Pixel, Client
block1_x = 101
block1_y = 384
block2_x = 165
block2_y = 380
punch_x = 401
punch_y = 709
work(){
	
	loop{
	findchand()
	put_chand()
	break_chand1()
	sleep, 500
	move_right()
	
	findchand()
	put_chand()
	break_chand2()
	sleep, 800
	move_left()
	
	check_seed()
	
	
}
	
	;block_1 = 101,384
	;block_2 = 165,380
	
}

findchand(){
	;some_inv = 345, 668, 676, 763
	Sleep, 1000
	ImageSearch, chand_x, chand_y, 255, 589,681,765, *150 chand.png
	if (ErrorLevel = 0){
		Sleep,150
		Mousemove, %chand_x%, %chand_y%
		Sleep,150
		MouseClick, left
		
	}
	
	else{
		chand_finder()

	
	}

}


put_chand(){
	
	MouseClick, left, 101,395
	Sleep, 150
	MouseClick, left, 165, 395
	Sleep, 150
}


break_chand1(){
	;6times click = break
	;punch = 401,709
	MouseClick, left, 401,709 ;select punch
	Sleep, 200
	MouseClick, left, 101,395
	Sleep, 200
	MouseClick, left, 101,395
	Sleep, 200
	MouseClick, left, 101,395
	Sleep, 200
	MouseClick, left, 101,395
	Sleep, 200
	MouseClick, left, 101,395
	Sleep, 200
	MouseClick, left, 101,395
	Sleep, 200
	MouseClick, left, 165, 395
	Sleep, 200
	MouseClick, left, 165, 395
	Sleep, 200
	MouseClick, left, 165, 395
	Sleep, 200
	MouseClick, left, 165, 395
	Sleep, 200
	MouseClick, left, 165, 395
	Sleep, 200
	MouseClick, left, 165, 395
	Sleep, 200
	
	
	
	
}

break_chand2(){
	MouseClick, left, 401,709 ;select punch
	Sleep, 200
	MouseClick, left, 165, 395
	Sleep, 200
	MouseClick, left, 165, 395
	Sleep, 200
	MouseClick, left, 165, 395
	Sleep, 200
	MouseClick, left, 165, 395
	Sleep, 200
	MouseClick, left, 165, 395
	Sleep, 200
	MouseClick, left, 165, 395
	Sleep, 200
	MouseClick, left, 101,395
	Sleep, 200
	MouseClick, left, 101,395
	Sleep, 200
	MouseClick, left, 101,395
	Sleep, 200
	MouseClick, left, 101,395
	Sleep, 200
	MouseClick, left, 101,395
	Sleep, 200
	MouseClick, left, 101,395
	
}
	
	

move_right(){
	Send, {d down}
	Sleep, 350
	Send, {d up}
}

move_left(){
	Send, {a down}
	Sleep, 400
	Send, {a up}
}

chand_finder(){
	;some inv = 512, 655
	;up = 
	Sleep, 300
	MouseMove, 512, 670
	MouseClickDrag, left, 513, 670,516,179,30
	Sleep, 400
	MouseClick, left, 190,360
	Sleep, 500
	Send, chand
	MouseMove, 450, 560
	Sleep, 500
	loop, 20{
		MouseClick, WheelUp
		Sleep, 400
	}
	Sleep, 500
	
	
	
	ImageSearch, chd_x, chd_y, 98,344,825,750, *30 chand.png
	if (ErrorLevel = 0){
		MouseMove, %chd_x%, %chd_y%
		Sleep, 300
		MouseClick, left, 300, 400
	}
	else{
		state = done
		Sleep, 150
	}
	
	MouseClick, left, 300, 400
	
	MouseClick, left, 190,330
	Sleep, 150
	Send, {BS}
	Sleep, 150
	Send, {BS}
	Sleep, 150
	Send, {BS}
	Sleep, 150
	Send, {BS}
	Sleep, 150
	Send, {BS}
	Sleep, 150
	
	MouseClickDrag, left, 516, 210, 512, 655, 30
	
	Sleep,1000
	
	ImageSearch, chand_x, chand_y, 345, 670,676,763, *150 chand.png
	if (ErrorLevel = 0){
		
		Sleep,150
		Mousemove, %chand_x%, %chand_y%
		Sleep,150
		MouseClick, left
		
	}
	
	else{
		Shutdown, 1
	}
}


check_seed(){
	Sleep, 1000
	ImageSearch, seed_x, seed_y, 255, 589,681,765, *30 chand_seed.PNG
	if (ErrorLevel = 0){
	
		Send, {d down}
		Sleep, 600
		Send, {d up}
		Sleep, 150
		MouseMove, %seed_x%,%seed_y%
		Sleep, 150
		MouseClick, left
		Sleep, 300
		MouseMove, 513,670
		Sleep, 300
		MouseClickDrag, left, 513, 670,516,179,30 ;inv up
		Sleep, 300
		MouseMove, 896, 540
		MouseClick,left,896, 540 ;click drop
		Sleep, 1200
		MouseMove, 896, 502
		MouseClick, left, 448,480 ;click ok
		Sleep, 900
		MouseMove, 516, 179
		MouseClickDrag, left, 516, 210, 512, 655, 30
		Sleep, 900
		Send, {a down}
		Sleep, 900
		Send, {a up}
		

}
		
		
		
}
	
