.model small
.code
org 100h

start: jmp main
    x db "INPUT A SINGLE DIGIT NUMBER: $"
    y db "INPUT ANOTHER SINGLE DIGIT NUMER: $"
    z db "THEIR SUM IS: $"

    main proc near
        mov dx, offset x ;load with the address of x not the value of x
        call print
        call input_ok
        mov cl, al  ;move content of al to cl
        call down

        mov dx, offset y ;load with the address of y not the value of y
        call print
        call input_ok
        mov ch, al  ;move content of al to ch
        call down

        mov dx, offset z ;load with the address of z not the value of z
        call print
        
        add ch, cl ;add content contents of ch and cl then store the result in ch
        mov ah, 2   ;useless
        mov dl, ch  ;useless
        add dl, ch  ;useless
        mov ah, 2
        mov dl, ch
        add dl, '0' ;to convert the sum from decimal to ASCII
        int 21h
        int 20h
    main endp

    down proc near  ;print new line
        mov ah, 2
        mov dl, 13
        int 21h 
        mov dl, 10
        int 21h
        ret
    down endp

    print proc near ;print string
        mov ah, 9
        int 21h
        ret
    print endp

    input_ok proc near ;accept input and convert to decimal 
        mov ah, 1   ;stores the input value in the AL register
        int 21h
        sub al, '0' ;subtracts ascii '0' to convert it into a decimal number
        ret
    input_ok endp
end start