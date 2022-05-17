	
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
    mov r0,#0
    mov r1,#0	
    mov r2, r6
    b secondLoop
    #for loop to clear the entire thing 
firstLoop:
    cmp r0, #8
    bl closefb
    cmp r0, #8
    beq _start_exit
    add r0,#1
    mov r1,#0
    b secondLoop
    ####added lines here it comes up at 0,8
    
secondLoop:    
    cmp r1, #8
    beq firstLoop
    #setPixel to clear
    bl setPixel
    add r1,r1,#1 
    b secondLoop
   ## add r0,r0,#1 
   ## b firstLoop
	#cleanup the data structures created by openfb and close the framebuffer device
	##bl closefb

_start_exit: 
	#clean exit
	mov r7,#1
	svc #0

