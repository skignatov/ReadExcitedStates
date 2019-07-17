Subroutine BuildNumber(nbuild)

Logical res
Character(255) FilObj,FilInc
!Character(36) str

Include 'BuildNumber.fi'

! BuildNumber saves the build number of the current program version
! using the BuilNumber.fi file
!
! Usage in the program (no additional code is needed):
!
!		.....
!		Call Build Number(nBuild)
!		Write(*,'('' Build number: '',i5')nBuild
!		....
!
!
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! Before use, adjust the directory names where two your signal files are located!
FilObj='d:\Projects\ReadExcitedStates\ReadExcitedStates\Debug\BuildNumber.obj'
FilInc='d:\Projects\ReadExcitedStates\ReadExcitedStates\BuildNumber.fi'		!<--    Source\BuildNumber.fi ???
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
!

INQUIRE(file=FilObj,EXIST=res)
If (.not.res) Return

INQUIRE(file=FilInc,EXIST=res)
If (.not.res) Return

Open(98,file=FilInc)
Read(98,'(10x,i6)')nBuild0
If (nBuild0/=nbuild) Return
nbuild=nbuild+1
Rewind(98)
Write(98,'(''nBuild   ='',i6)')nbuild
Close(98)

Open(98,file=FilObj)
Close(98,status='delete')

!str='del '//FilObj
!res=systemqq(str)

End



