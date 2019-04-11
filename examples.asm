; Write an instruction that increments val2
; Write an instruction that subtracts val2 from EAX
; Write instructions that subtract val4 from val2
; If val2 is incremented by 1 using the ADD  instruction, what will be the valuse of the Carry and Sign flags?



.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data 
val1 db 10h
val2 dw 8000h
val3 dd 0ffffh
val4 dw 7fffh

.code
main proc
    inc val2
    sub eax, val2
    sub val4, val2
    add val2, 1           

main endp
end main
    invoke ExitProcess,0
main endp
end main