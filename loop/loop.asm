.model small
.stack 100h

.data

.code
    main proc

        mov cx, 5

        top:
            mov dl, 5 ;move to dl the value of 5
            add dl, 48  ; add 48 to dl to convert it to the character 5

            mov ah, 2h ; print character code
            int 21h

        loop top
endp
end main