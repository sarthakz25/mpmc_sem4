data segment
num1 db 04h
num2 db 03h
result db ?
data ends

code segment
start: assume ds: data, cs:code
mov ax, data
mov ds, ax
mov ax, 0000h
mov al, num1
mov bl, num2
div bl
mov result, al

mov ax, 4c00h
int 21h
code ends
end start
