include irvine32.inc

Comment !
Description:
Write a program that copies a string representing your first and last name 
from source to a target string reversing the character order in the process 
(the characters in the target string will represent your first and last name in reverse order)
Print the source and target strings to the screen before you exit your program. 
!

WriteString PROTO
.data
sourcestr byte 'Gunnar Bergstrom',0ah,0dh
target byte SIZEOF sourcestr DUP('#')

.code
main proc
	mov esi,0
	mov edi,LENGTHOF sourcestr - 1
	mov ecx,SIZEOF sourcestr

L1:
	mov al, sourcestr[esi]
	mov target[edi],al
	inc esi
	dec edi
	loop L1
	mov edx, OFFSET sourcestr
	call WriteString

exit
main endp
end main