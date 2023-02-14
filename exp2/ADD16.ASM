data segment
num1 dw 1d96h
num2 dw 420ch
result dw ?
carry dw ?
data ends

code segment
start:assume ds:data,cs:code
mov ax,data
mov ds,ax
mov dx,0000h
mov ax,num1
mov bx,num2
add ax,bx
jnc down
inc dx
down:mov result,ax
mov carry, dx
mov ax,4c00h
int 21h
code ends
end start
