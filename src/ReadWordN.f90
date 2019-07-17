Subroutine ReadWordN(N,MaxSubStr,String,Str2)

Character(len=*) String,Str2
Character(len=Len(Str2)) SubStr(MaxSubstr)

! Subroutine ReadWordN reads N-th word (sequence of non-blank characters)
! from Str1 and puts it to Str2

Call SubString(String,MaxSubStr,NSubStr,SubStr)

Str2=SubStr(N)

End
