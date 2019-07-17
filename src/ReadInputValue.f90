Subroutine ReadInputValue(line,Pattern,iBegPos,iEndPos,iSuccess,Value)

IMPLICIT Real(8) (A-H,O-Z)

CHARACTER(80) line,buf,Pattern

!
! Subroutine ReadInputValue reads the input values 
! from the customized pattern input looking for lines
! containing PATTERN and reading the values standing 
! at iBegPos:iEndPos positions of LINE
!

Value=0.d0
iSuccess=0

	lP=Len_Trim(Pattern)
	iPatt=INDEX(line,Pattern(1:lP))
	If (iPatt/=0) Then
	   buf=line(iBegPos:iEndPos)
	   Read(buf,*)Value
       iSuccess=1
	Endif
	
Return
End

