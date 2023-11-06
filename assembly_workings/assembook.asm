include irvine32.inc
.code
main proc
    ; Calculate the equation
    mov eax, 60    ; eax = 60
    sub eax, 20    ; eax = eax - 20
    add eax, 5     ; eax = eax + 5
    add eax, 4     ; eax = eax + 4

    call DumpRegs

    exit
main endp
end main