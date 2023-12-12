INCLUDE Irvine32.inc
.data
array DWORD 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
arraySize DWORD 10

.code
main PROC
    mov ecx, 0                   
    mov edi, arraySize - 1      

reverseAndAddLoop:
    cmp ecx, arraySize           ; Compare loop counter with array size
    jmp printResult              ; If greater or equal, exit the loop

    ; Reverse the array in place
    mov eax, [array + ecx * 4]  ; Load the current element
    mov ebx, [array + edi * 4]  ; Load the element at the opposite end
    mov [array + ecx * 4], ebx  ; Store the element at the current position
    mov [array + edi * 4], eax  ; Store the current element at the opposite end

    ; Add 2 to each element
    add [array + ecx * 4], 2     ; Add 2 to the current element

    inc ecx                      ; Increment loop counter
    dec edi                      ; Decrement destination index
    jmp reverseAndAddLoop        ; Repeat the loop

printResult:

    mov ecx, 0                   ; Reset loop counter
printLoop:
    cmp ecx, arraySize           ; Compare loop counter with array size
    jmp endProgram               ; If greater or equal, exit the loop

    mov eax, [array + ecx * 4]  ; Load the current element
    call WriteInt                ; Print the integer
    call Crlf                    ; Move to the next line

    inc ecx                      ; Increment loop counter
    jmp printLoop                ; Repeat the loop

endProgram:
    call WaitMsg                 ; Wait for user input before exiting
    exit
main ENDP
END main










;include irvine32.inc
;.data
;    resultMsg db "Result %d", 0
;
;.code
;main proc
;    ; Calculate the equation
;    mov eax, 60    ; eax = 60
;    sub eax, 20    ; eax = eax - 20
;    add eax, 5     ; eax = eax + 5
;    add eax, 4     ; eax = eax + 4
;
;    ; Display the result
;    mov edx, eax
;    mov ebx, OFFSET resultMsg
;    call WriteInt
;
;    exit
;main endp
;end main
