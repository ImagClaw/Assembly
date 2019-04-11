; Print String to console
TITLE NASM Template

INCLUDE Irvine32.inc

.data
	myHeaderInfo db "This shit is fire, yo!", 0
	len equ $ - myHeaderInfo

.code
main proc
    mov edx, OFFSET myHeaderInfo
    call WriteString

	mov eax, len
	call WriteDec

    exit        

main endp
end main