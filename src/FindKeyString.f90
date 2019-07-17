Subroutine FindKeyString(iUnit,iPos,String,ModeBeg,StrBeg,ModeEnd,StrEnd,iRes,StrRes)
Implicit Real(8) (A-H,O-Z)

Character(*)   String,StrBeg,StrEnd,StrRes
Character(255) Str,String1,StrBeg1,StrEnd1 
Character(255) ToUpperCase
Character(1)   CommentChar

! Subroutine FindKeyString searches in the open file iUnit in order to locate
! the substring String (located at the position iPos from the beginning of line)
! The search starts from line StrBeg and finishes the line StrEnd
! iRes returns the line number if String is located or 0 otherwise
!
! ModeBeg:
!   0	- from the beginning of file
!	1	- from the line containing StrBeg at first position
!  -1   - from the current position
!
! ModeEnd:
!   0   - to the end of file
!   1   - to the line containing StrEnd at first position
!
! NOTE: The lines beginning with CommentChar will be skipped during the search!

CommentChar='!'

Str    =repeat(' ',255)
String1=repeat(' ',255)
StrBeg1=repeat(' ',255)
StrEnd1=repeat(' ',255)

l=Len(String)
String1(1:l)=String
l=Len(StrBeg)
StrBeg1(1:l)=StrBeg
l=Len(StrEnd)
StrEnd1(1:l)=StrEnd
lRes=Len(StrRes)


! At first, determine the current line position

Call CurrentLine(iUnit,lCurrentLine,NLines,LinesToEnd)


! Now, find the required line
If (iPos<=0) iPos=1
If (ModeBeg==0) Rewind(iUnit)
iRes=0

ll=0
If (ModeBeg==1) Then
	Rewind(iUnit)
	Do While (.not.EOF(iUnit))
		Read(iUnit,'(a255)')Str
		Str=ToUpperCase(Str)
		ll=ll+1
		If (INDEX(AdjustL(Str),CommentChar)==1) Cycle
		If (INDEX(Str,Trim(StrBeg1))==1) Exit
	Enddo
Endif

Do While (.not.EOF(iUnit))
	Read(iUnit,'(a255)')Str
	Str=ToUpperCase(Str)
	ll=ll+1
	If (INDEX(AdjustL(Str),CommentChar)==1) Cycle
	If (ModeEnd==1.and.INDEX(Str,Trim(StrEnd1))==1) Exit
	If (INDEX(Str,Trim(String1))==iPos) Then
		iRes=ll
		StrRes=Str(1:lRes)
		Exit
	Endif
!	Endif
Enddo

! If the requred line is not found, go to the starting position in the file

If (iRes==0) Call GotoLine(iUnit,lCurrentLine,ir)

End
