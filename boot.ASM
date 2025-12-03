org 0x7C00

start:
    mov ah, 0x0E
    mov al, 'H'
    int 0x10
    mov al, 'i'
    int 0x10
    mov al, ''
    int 0x10

BYAZ:
   mov ah, 0x00
   int 0x16
   cmp al, 'B'
   je BYAZ

   mov ax, 0x0800
   mov es, ax
   xor bx, bx

   mov ah, 02h
   mov al, 1
   mov ch, 0
   mov cl, 1
   mov dh, 0
   mov dl, 80h
   int 13h

   jmp far 0x0800:0x0000

   jmp BYAZ

hang:
   jmp hang

times 510-($-$$) db 0
dw 0x55AA


