.model small
.code
org 100h

start: jmp main
    x db 'RED$'
    y db 'BLUE$'

main proc near
    mov ah, 9
    lea dx, y
    int 21h
    call down

    mov ah, 9
    mov dx, offset x
    int 21h
    int 20h
main endp

down proc near
    mov ah, 2
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h
    ret 
down endp

end start