.model small
.code
org 100h
start:
        mov ah, 2
        mov dl, 'R'
        int 21h
        mov dl, 'E'
        int 21h
        mov dl, 'D'
        int 21h
        int 20h
end start
