.model small
    
.stack 100h

.data
    msg db 'blue',13,10,'$'

.code
main proc
    mov ax,@data
    mov ds,ax

    lea dx,msg
    mov ah,9      ;string output
    int 21h 

    mov dx,0   ;dx counts characters
    mov ah,9   ;prepare for read
    int 21h  

    mov  cx, 11
    while_:
        dec  cx           ;Change counter
        jz   end_while    ;Exit after 10 iterations
        mov  ah, 9
        int  21h          ;Print string
        jmp while_        ;Loop back
    end_while:
 
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
