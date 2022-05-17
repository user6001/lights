	
.global _start
.text
_start:    
    #open frame buffer 1 
    mov r0,#1
    bl openfb
    cmp r0,#0
    blt _start_exit


    
    #set the color to blue
    mov r8,r0
    mov r0,#31
    mov r1,#0
    mov r2,#0    
    bl getColor
    mov r6,r0
    
    #initializing the for loop variables
    mov r0,#0
    mov r1,#0    
    mov r2, r6
    mov r10, #0
    mov r12, #0
    b firstLoop
firstLoop:
    cmp r0, #8
    beq thirdLoop
    #set pixel to red
    bl setPixel
    add r12,#1
    mov r0,r12
    add r10,#1
    mov r1,r10 
    b firstLoop
    
    #initializing the for lop variables
thirdLoop:
    mov r0,#7
    mov r1,#0    
    mov r2, r6
    mov r10, #0
    mov r12, #7
    b secondLoop
secondLoop:    
    cmp r1, #8
    beq _start_exit
    #set pixel to red
    bl setPixel
    sub r12,#1
    mov r0,r12
    add r10,#1
    mov r1,r10 
    b secondLoop
   

_start_exit: 
    #clean exit
    mov r7,#1
    svc #0