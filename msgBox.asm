; MsgBox demo                     

INCLUDE Irvine32.inc

.data

	title1	BYTE	"SAN ANTONIO", 0	; create caption for the title (e.g. SAN ANTONIO)
	title2	BYTE	"TEXAS", 0			; create caption for the title (e.g. TEXAS)

	msg		BYTE	"All your bases are belong to us", 0dh, 0ah, 0	;Msg BYTE "MESSAGE", ;carriage return (hex),; line feed (hex)
	clickOK	BYTE	"Click OK to continue...", 0			; BYTE "First Click OK to continue...", 0		
	    
.code
main PROC

	mov		ebx, OFFSET title1			;move title "SAN ANTONIO" to a register ebx
	mov		edx, OFFSET clickOK			;move message "Click OK to continue..." to a register edx
	call	MsgBox

	mov		ebx, OFFSET title2			;move title "TEXAS" to a register ebx
	mov		edx, OFFSET msg				;move message "All your bases are belong to us" to a register edx
	call	MsgBox


	exit
main ENDP

END main 