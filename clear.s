	
.global _start
.text
_start:	
	#open frame buffer 1 
	mov r0,#1
	bl openfb
	cmp r0,#0
	blt _start_exit


    
    #set the color to blank
	mov r8,r0
	mov r0,#0
	mov r1,#0
	mov r2,#0	
	bl getColor
	mov r6,r0
    
    #initializing the for loop variables
    mov r9,#0
	mov r10,#0	

    #for loop to clear the entire thing 
firstLoop:
    add r9,r9,#1
secondLoop:    
    add r10,r10, #1
	mov r0,r9
	mov r1,r10
	mov r2,#0
    #setPixel to clear
    bl setPixel
	cmp r10,#8
    bgt secondLoop
	cmp r9,#8
    bgt firstLoop
	#cleanup the data structures created by openfb and close the framebuffer device
	bl closefb

_start_exit: 
	#clean exit
	mov r7,#1
	svc #0

