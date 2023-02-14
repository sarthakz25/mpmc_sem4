data segment
block1 db 30h,40h,50h
block2 db 0h, 0h, 0h
data ends

extra segment
extra ends

destination segment
destination ends

code segment
start: assume ds:data, cs:code, es:extra
mov ax,data
mov ds,ax
mov es,ax
mov ax,0000h
lea si,block1
lea di,block2
mov cx,10
cld;     
rep movsb;

mov ax, 4c00h
int 21h
code ends
end start
