	
.global _start
.text
_start:	
	#open frame buffer 1 
	mov r0,#1
	bl openfb
	cmp r0,#0
	blt _start_exit

	#get the color purple store in r6
	mov r8,r0
	mov r0,#31
	mov r1,#0
	mov r2,#31	
	bl getColor
	mov r6,r0

	#set pixel 5,4 to the blue color stored in r6 
	mov r2,r6
	mov r0,#5
	mov r1,#4	
	bl setPixel
	#set pixel 6,4 to the blue color stored in r6 
	mov r2,r6
	mov r0,#6
	mov r1,#4	
	bl setPixel
	#set pixel 1,1 to the blue color stored in r6 
	mov r2,r6
	mov r0,#1
	mov r1,#1	
	bl setPixel
    #set pixel 2,2 to the blue color stored in r6 
	mov r2,r6
	mov r0,#2
	mov r1,#2	
	bl setPixel
	#set pixel 3,1 to the blue color stored in r6 
	mov r2,r6
	mov r0,#3
	mov r1,#1	
	bl setPixel

    #initializing the for lop variables
    mov r0,#0
    mov r1,#0	
    mov r2, r6
    mov r10, #0
    mov r12, #7

firstLoop:
    cmp r0, #8
    beq _start_exit
    #set pixel to red
    bl setPixel
    mov r0,r12
    add r10,#1
    mov r1,r10 
    b firstLoop

    #initializing the for lop variables
    mov r0,#0
    mov r1,#0	
    mov r2, r6
    mov r10, #0
    mov r12, #0

secondLoop:
    cmp r0, #8
    beq _start_exit
    #set pixel to red
    bl setPixel
    mov r0,r12
    add r10,#1
    mov r1,r10 
    b secondLoop

    #initializing the for lop variables
    mov r0,#0
    mov r1,#0	
    mov r2, r6
    mov r10, #0
    mov r12, #4

thirdLoop:
    cmp r0, #8
    beq _start_exit
    #set pixel to red
    bl setPixel
    mov r0,r12
    add r10,#1
    mov r1,r10 
    b thirdLoop



_start_exit: 
	#clean exit
	mov r7,#1
	svc #0

