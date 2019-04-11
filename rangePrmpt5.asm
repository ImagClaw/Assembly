INCLUDE Irvine32.inc

.data

	startRange	BYTE "Enter the start of your range: ", 0
	endRange	BYTE "Enter the end of your range: ", 0
	startNum	DWORD ?
	endNum		DWORD ?

.code
	; Main Func
    main PROC
        call Clrscr
		mov		edx, OFFSET startRange			; Prompts User to enter the end of range
		call	WriteString						; Writes prompt to concole
		call	ReadInt							; Reads user int to eax
        mov		startNum, eax					; moves user int to endNum
		
		call Clrscr
		mov		edx, OFFSET endRange			; Prompts User to enter the start of range
		call	WriteString						; Writes prompt to concole
		call	ReadInt							; Reads user int to eax
		mov		endNum, eax


		mov		ebx, endNum						; Moves endNum into the ebx register
		mov		eax, startNum					; Moves startNum into the eax register
        push	eax								; Pushes eax (startNum) onto the stack
        push	ebx								; Pushes ebx (endNum) onto the stack

        call	BetterRandomRange				; Calls BetterRandomRange

        pop		ebx								; Pops eax (startRange) off the stack
        pop		eax								; Pops ebx (endRange) off the stack

        call	WaitMsg							; Allows user to see answer prior to binary end
        exit
    main ENDP

	; BetterRandomRange function
    BetterRandomRange PROC
        sub ebx, eax							; subtract eax from ebx
        xchg ebx, eax							; exchange ebx with eax
        call RandomRange						; generate random int
        neg ebx									; makes ebx negative
        sub eax, ebx							; sub ebx from eax to define range
        call WriteInt							; write signed decimal
        call Crlf								; new line
        ret
    BetterRandomRange ENDP

END main