; Summing an Array (SumArray.asm)

; This program sums an array of words.

.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:dword

.data
intarray DWORD 10000h,20000h,30000h,40000h

.code
main proc

	mov edi, OFFSET intArray	; 1: EDI = address of intarray
	mov ecx, LENGTHOF intArray
	mov eax, 0
	L1:
			add eax, [edi]
			add edi, TYPE intarray
			loop L1

	invoke ExitProcess,0 ; Finally what is the value of EAX?
main endp
end main