data segment
num1 db 06h ;db=define byte
num2 db 09h ;dw=define word
result dw ?
data ends

code segment
start:assume ds:data,cs:code
mov ax,data ;initializing data segment
mov ds,ax
mov ah,00h
mov al,num1
mov bl,num2
add al,bl
jnc down
inc ah
down:mov result,ax
mov ax,4c00h
int 21h ;handles I/O
code ends
end start
