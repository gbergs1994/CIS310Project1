Comment !
Description:
1. Using the AddTwo program from Section 3.2 as a
reference, write a program that calculates the following expression,
using registers: A = (A + B) - (C + D). Assign integer values to the EAX,
EBX, ECX, and EDX registers. A=8000h, B= 2000h, C= 1000h, D=5000
2. Using the Irvine library dump the registers to the screen to inspect your results
3. Using the Irvine library write the following string to the screen:
" My name is:  Your First and Last Name"
!

ExitProcess proto
; include irvine64.inc
.data
sum qword 0
str1 byte ' My name is: Gunnar Bergstrom'

.code
main proc
mov eax,8000h
mov ebx,2000h
mov ecx,1000h
mov edx,5000h

add eax, ebx; add the value of ebx to the eax register
add ecx, edx; add the value of edx to the ecx register

sub eax,ecx; subtract the value of ecx from the eax register

; mov edx, offset str1

lea edx,str1

; call writestring

call ExitProcess

main endp
end