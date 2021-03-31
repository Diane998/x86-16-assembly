.model small
.code
org 100h
start:
    mov ah, 7
    int 21h
    mov dl, 20h
    add dl, 20h
    mov ah, 2
    int 21h
    int 20h
end start