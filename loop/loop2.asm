.model small
    
.stack 100h

.data
    x db 'RED$'
    y db 'BLUE$'

.code
start: jmp main
    main proc near 
        mov ax, @data
        mov ds, ax

        lea dx, x
        call down

        mov dx, offset y
        call down
        int 20h
    main endp

    down proc near
        mov cx, 4
        top:
            mov ah, 9
            int 21h
            mov dl, 13
            int 21h
            mov dl, 10
            int 21h
        loop top
        ret
    down endp
end start