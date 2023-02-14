data segment
block db 18h, 22h, 19h, 20h, 21h
smallest db ?
data ends

code segment
start:
assume ds: data, cs: code
mov ax, data
mov ds, ax
mov ax, 0000h
lea si, block
mov cl, 04h
mov al, [si]

A:      inc si
        cmp al, [si]
        jc B
        mov al, [si]
B:      dec cl
        jnz A
        mov smallest, al

mov ax, 4c00h
int 21h
code ends
end start
