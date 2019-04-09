.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	varA DD 12
	varB DD 3
	varC DD 5
	varD DD 6
	sum DD ?


.code
main proc
    mov    eax,varA                
    add    eax,varB
    mov    edx,varC
    add    edx,varD
    sub    eax,edx
    mov    sum,eax               

main endp
end main
    invoke ExitProcess,0
main endp
end main