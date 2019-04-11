.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data 
array WORD 9,10,11,12,13,14,15
.code
main PROC
	; WAY #1  Indirect Addressing
	mov eax, 0                       ;make things clear
	mov esi,OFFSET array
	mov ecx, LENGTHOF array
L1:
	mov ax,[esi]						
	inc esi
	inc esi                          ;What is in esi?   0x0040400eh
	loop L1

	;WAY #2 Index Addressing
	mov eax,0
	mov esi,0
	mov ecx, LENGTHOF array

L2:
	mov ax, array[esi]						
	inc esi
	inc esi                          ;,WHAT IS IN ESI?		0x0000000eh
	loop L2

	;Scale Factors in Indexed Operands
	mov esi, 3 * TYPE array
	mov ax, array[esi]               ;ax = What is in ax?	0x000ch

	mov esi, 5
	mov ax, array[esi*TYPE array]    ;ax = What is in ax?	0x000eh

INVOKE ExitProcess,0
main ENDP
END main