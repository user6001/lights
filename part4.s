	
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

    #set pixel 5,2 to the blue color stored in r6 
    mov r2,r6
    mov r0,#5
    mov r1,#2    
    bl setPixel
    #set pixel 6,2 to the blue color stored in r6 
    mov r2,r6
    mov r0,#6
    mov r1,#2    
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
    #below is 0,0 to 0,3
    mov r2,r6
    mov r0,#0
    mov r1,#0    
    bl setPixel
    mov r2,r6
    mov r0,#0
    mov r1,#1    
    bl setPixel
    mov r2,r6
    mov r0,#0
    mov r1,#2    
    bl setPixel
    mov r2,r6
    mov r0,#0
    mov r1,#3
    bl setPixel
#below is 4,0 to 4,3
    mov r2,r6
    mov r0,#4
    mov r1,#0    
    bl setPixel
    mov r2,r6
    mov r0,#4
    mov r1,#1    
    bl setPixel
    mov r2,r6
    mov r0,#4
    mov r1,#2    
    bl setPixel
    mov r2,r6
    mov r0,#4
    mov r1,#3
    bl setPixel
#below is 7,0 to 7,3
    mov r2,r6
    mov r0,#7
    mov r1,#0    
    bl setPixel
    mov r2,r6
    mov r0,#7
    mov r1,#1    
    bl setPixel
    mov r2,r6
    mov r0,#7
    mov r1,#2    
    bl setPixel
    mov r2,r6
    mov r0,#7
    mov r1,#3
    bl setPixel


_start_exit: 
    #clean exit
    mov r7,#1
    svc #0
