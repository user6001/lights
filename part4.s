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
#the C
    #set pixel 0,1 to 0,4
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
    mov r2,r6
    mov r0,#0
    mov r1,#4    
    bl setPixel
    #set 1,1 2,1 1,4 2,4
    mov r2,r6
    mov r0,#1
    mov r1,#1    
    bl setPixel
    mov r2,r6
    mov r0,#2
    mov r1,#1    
    bl setPixel
    mov r2,r6
    mov r0,#1
    mov r1,#4    
    bl setPixel
    mov r2,r6
    mov r0,#2
    mov r1,#4    
    bl setPixel    
#the K
    #set 4,1 to 4,6
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
    mov r2,r6
    mov r0,#4
    mov r1,#4    
    bl setPixel
    mov r2,r6
    mov r0,#4
    mov r1,#5    
    bl setPixel
    mov r2,r6
    mov r0,#4
    mov r1,#6    
    bl setPixel
    #set 5,3 5,4
    mov r2,r6
    mov r0,#5
    mov r1,#3    
    bl setPixel
    mov r2,r6
    mov r0,#5
    mov r1,#4
    bl setPixel    
    #set 6,2 7,1 6,5 7,6
    mov r2,r6
    mov r0,#6
    mov r1,#2    
    bl setPixel
    mov r2,r6
    mov r0,#7
    mov r1,#1    
    bl setPixel
    #set 5,3 5,4
    mov r2,r6
    mov r0,#6
    mov r1,#5    
    bl setPixel
    mov r2,r6
    mov r0,#7
    mov r1,#6    
    bl setPixel
    bl closefb

_start_exit: 
    #clean exit
    mov r7,#1
    svc #0