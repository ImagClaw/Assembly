; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	myHeaderInfo db "Dal Whelpley", 0dh, 0ah, 0

.code
main proc
    mo        

main endp
end main
    invoke ExitProcess,0
main endp
end main