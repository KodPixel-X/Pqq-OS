org 100h

start:
    mov ah, 0Eh
    mov al, 'M'
    int 10h
    mov al, 'E'
    int 10h
    mov al, 'R'
    int 10h
    mov al, 'H'
    int 10h
    mov al, 'A'
    int 10h
    mov al, 'B'
    int 10h
    mov al, 'A'
    int 10h

    mov ah, 4Ch
    int 21h