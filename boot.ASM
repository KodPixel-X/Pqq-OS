org 0x7C00

start:
    mov ah, 0x0E
    mov al, 'H'
    int 0x10
    mov al, 'i'
    int 0x10
    mov al, ''
    int 0x10

start2:
     mov ah, 0x00
     int 0x16
     cmp al, 'H'
     je start2
     mov ah, 0x0E
     mov al, 'O'
     int 0x10
     mov al, 'S'
     int 0x10
     jmp start2


hang:
   jmp hang

times 510-($-$$) db 0
dw 0x55AA