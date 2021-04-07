.model small
.code
org 100h

start: jmp main
    x db 'RED',13,10,'$'
    y db 'BLUE',13,10,'$'

    main proc near 
        lea dx, x
        call down

        mov dx, offset y
        call down
        int 20h
    main endp

    down proc near
        mov cx, 4
        printString:
            mov ah, 9h ;print string
            int 21h
        loop printString
        ret
    down endp
end start
