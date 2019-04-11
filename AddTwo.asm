TITLE Add and subtract, Version 2
INCLUDE Irvine32.inc
.data
dVal DWORD ? ;12345678h	

.code
main PROC
	mov dVal, 12345678h
	mov ax, WORD PTR dVal+2
	add ax, 3
	mov WORD PTR dVal, ax
	mov eax, dVal
	
	exit
main ENDP
END main