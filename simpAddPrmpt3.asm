; Simple Add 1

; Prompts the User for 2 inputs and then adds them together.

INCLUDE Irvine32.inc

.data
	welcome		BYTE "Welcome to the adding program.", 0dh, 0ah, 0
	prompt1		BYTE "Enter your first number: ", 0
	prompt2		BYTE "Enter your second Number: ", 0
	answer		BYTE "The Sum is: ", 0
	dVal		DWORD ?


.code
main PROC
	; clear screen and center prompt1
	call	Clrscr
	mov		dl, 35
	mov		dh, 15
	call	Gotoxy


	mov		edx, OFFSET prompt1		; move prompt1 text into edx
	call	WriteString				; write that string to console
	call	ReadInt					; input the integer
	mov		dVal, eax				; save in a variab5le

	call	Clrscr
	
	; center prompt2
	mov		dl, 35
	mov		dh, 15
	call	Gotoxy
	mov		edx, OFFSET prompt2		; move prompt2 text into edx
	call	WriteString				; write that string to console
	call	ReadInt					; input the second integer
	mov		ebx, eax				; move readint (eax) to ebx
	add		ebx, dVal				; add user input to dwordVal
	mov		eax, ebx				; move ebx to eax
	call	Clrscr

	; center answer
	mov		dl, 35
	mov		dh, 15
	call	Gotoxy
	mov		edx, OFFSET answer		; move answer text into edx
	call	WriteString				; write that string to console
	call	WriteInt				; write the sum (eax) to screen

	call	Crlf					; new line

	call	WaitMsg					; "Press any key..."

	call	Clrscr
	exit

main ENDP
END main