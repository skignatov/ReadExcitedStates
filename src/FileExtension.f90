Subroutine FileExtension(Fil,Ext)
Character(*) Fil,Ext

! Subroutine FileExtension changes or adds the file extension Ext
! to the file name Fil 
! Fil should have a format:  filename.old or filename
! Ext should have a format:  .ext
 
ind=INDEX(Fil,'.')
If (ind==0) Then
	Fil=Trim(Fil)//Trim(Ext)
Else
	le=Len_Trim(Ext)
	Fil(ind:ind+le)=Trim(Ext)
Endif

End
