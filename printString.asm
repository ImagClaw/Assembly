; Print String to console
TITLE NASM Template

INCLUDE Irvine32.inc

.data
	myHeaderInfo db "Shit's on fire yo.", 0dh, 0ah, 0

.code
main proc
    mov edx, OFFSET myHeaderInfo
    call WriteString

    exit        

main endp
end main