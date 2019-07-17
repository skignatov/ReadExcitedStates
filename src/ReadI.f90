	 Integer*4 Function ReadI(string)
	 Implicit Real*8 (A-H,O-Z)
	 Character(len=*) string
	 Character buf*20
	 Logical inword

	 buf(1:20)=' '
	 inword=.false.
	 l=0
	 ll=Len_Trim(string)
	 Do i=1,ll
		If (string(i:i) == ' ') Then
			If (inword) Then
				Exit
			Else
				Cycle
			Endif
		Endif
		l=l+1
		If (l>20) Stop 'ERROR 001 IN READI'
		inword=.true.
		buf(l:l)=string(i:i)
	Enddo
	buf=ADJUSTR(buf)
	Read(buf,'(i20)')i
	ReadI=i
	
	Return
end
