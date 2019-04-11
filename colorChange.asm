INCLUDE Irvine32.inc

.data
YellowTextOnGreen = yellow + (green * 16)
BlueTextOnYellow = Blue + (yellow * 16)
RedTextOnGrey = red + (Gray * 16)
MagentaTextOnBrown = Magenta + (brown * 16)
lightCyanTextOnCyan = lightCyan + (Cyan * 16)
prompt BYTE "Hello world! This is assembly.",0

.code
main PROC

; Set text color to blue text on a light gray background

    mov	eax,YellowTextOnGreen
	call colorChange		               ;function created down below
	call waitmsg			                 ;function in irvine32 library

	mov	eax,BlueTextOnYellow
	call colorChange		               ;function created down below
	call waitmsg			                 ;function in irvine32 library

	mov	eax,RedTextOnGrey
	call colorChange		               ;function created down below
	call waitmsg			                 ;function in irvine32 library
		
	mov	eax,MagentaTextOnBrown
	call colorChange			             ;function created down below
	call waitmsg				               ;function in irvine32 library

	mov	eax,lightCyanTextOnCyan
	call colorChange		               ;function created down below

	exit
main ENDP

colorChange PROC
	call SetTextColor
	call Clrscr		        ;clear the screen so the whole screen can change color
	mov edx, offset prompt
	call WriteString
	call crlf
	ret
colorChange ENDP

END main