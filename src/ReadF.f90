	 Function ReadF(String)
	 Implicit Real*8 (A-H,O-Z)

	 Character(*) String
	 Character(len=Len(String)) buf
	 Character(1) bf

     ll=Len_Trim(String)
	 ls=Len(String)
     buf=repeat(' ',ls)
	 bf=' '
	 iSgn=1
	 Do i=1,ll
	    If (string(i:i)==' ') Cycle
	    If (string(i:i)=='.') Exit
		If (string(i:i)=='-') Then
		   iSgn=-1
		   cycle
		Endif
		buf(i:i)=string(i:i)
	 enddo
	 buf=ADJUSTR(buf)
	 Read(buf,'(i<ls>)')Ibuf
	 ReadF=Dble(Ibuf)

     If (i+1<=ll) Then
	    k=0
	    Do j=i+1,ll
		   If (string(j:j)==' ') Exit
		   k=k+1
		   bf=string(j:j)
		   Read(bf,'(i1)')Ibuf
		   ReadF=ReadF+Dble(Ibuf)*10.d0**(-k)
		enddo
	 endif
	 If (iSgn<0) ReadF=-ReadF
	 Return
end
