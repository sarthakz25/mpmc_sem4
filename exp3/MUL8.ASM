data segment
num1 db 42h
num2 db 84h
result dw ?
data ends

code segment
start: assume ds:data, cs:code
mov ax,data
mov ds,ax

mov al,num1
mov bl,num2
mul bl
mov result,ax

mov ax,4c00h
int 21h
code ends
end start
