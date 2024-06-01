Comment !
Description:
1. Using the AddTwo program from Section 3.2 as a
reference, write a program that calculates the following expression,
using registers: A = (A + B) - (C + D). Assign integer values to the EAX,
EBX, ECX, and EDX registers. A=8000h, B= 2000h, C= 1000h, D=5000
2. Using the Irvine library dump the registers to the screen to inspect your results
3. Using the Irvine library write the followng string to the screen:
" My name is:  Your First and Last Name"
!

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.code
main PROC

mov eax,8000h
mov ebx,2000h
mov ecx,1000h
mov edx,5000h

add eax, ebx; write yor comment here
add ???, ???; write your comment here

sub eax,ecx; write your comment here

INVOKE ExitProcess,0
main ENDP
END main