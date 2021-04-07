.model small
.code
org 100h

start: jmp main
    x db 'RED$'
    y db 'BLUE$'

    main proc near 
        mov cx, 4
        printRed:
            mov ah, 9
            lea dx, x
            int 21h
            call down
        loop printRed

        mov cx, 4
        printBlue:
            mov ah, 9
            lea dx, y
            int 21h 
            call down
        loop printBlue
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
