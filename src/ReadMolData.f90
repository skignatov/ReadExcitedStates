Subroutine ReadMolData
Use Vars

Implicit Real(8) (A-H,O-Z)

Character(255) Str,SearchStr,Fil47,Fil49
Real(8) P(MaxOrb*(MaxOrb+1)/2)

Open(7,File=FilDat)

! Read molecular data and geometry
Do While(.not.EOF(7))
    Read(7,'(a255)')Str
    If (INDEX(Str,'Symbolic Z-matrix:')>0) Then
        Read(7,'(9x,i3,15x,i2)')iCharge,Mult
        Exit
    Endif
Enddo

SearchStr='STANDARD ORIENTATION:'
Call ReadNXYZ(7,1,4,10,2,MaxAt,NA,C,NumAt,AName,SearchStr)

Do While(.not.EOF(7))
    Read(7,'(a255)')Str
    If (INDEX(Str,'basis functions,')>0) Then
        Read(Str,'(i6,17x,i6,21x,i6)')Nbasis,Nprim,Ncart
        Read(7,'(i6,20x,i6)')NoccA,NoccB
        Exit
    Endif
Enddo
Nocc=NoccA
Nelns=NoccA+NoccB
Norb=Nbasis

iUHF=1
If (Mult==1.and.NoccA==NoccB) iUHF=0

If (iiUHF==1) iUHF=1
If (iiRHF==1) iUHF=0


IoccA=0
IoccB=0
If (iUHF==1) Then
    IoccA(1:NoccA)=1
    IoccB(1:NoccB)=1
Else
    IoccA(1:Nocc)=2
Endif

Write(6,'(//'' Number of atoms     :'',i6)')Numat
Write(6,'(  '' System charge       :'',i6)')iCharge
Write(6,'(  '' Multiplicity        :'',i6)')Mult
Write(6,'(  '' Nbasis, Nprim, Ncart:'',3i6)')Nbasis,Nprim,Ncart
Write(6,'(  '' NoccA,  NoccB, Nelns:'',3i6)')NoccA,NoccB,Nelns
Write(6,'(  '' iUHF (0-RHF, 1-UHF) :'',i6)')iUHF

Close(7)


Open(3,File=FilSint)

Nbasis1=Nbasis
Do While(.not.EOF(3))
    Read(3,'(a255)')Str
    If (INDEX(Str,'basis functions,')>0) Then
        Read(Str,'(i6,17x,i6,21x,i6)')Nbasis1,Nprim1,Ncart1
        Read(3,'(i6,20x,i6)')NoccA1,NoccB1
        Exit
    Endif
Enddo
If (Nbasis1/=Nbasis) Then
    Nbasis=Nbasis1
    Norb=Nbasis
    Write(6,'(/'' WARNING! Nbasis in SINT file is different from that in LOG file! Use new Nbasis:'',i5/)')Nbasis
    iwarn=1
Endif
If (NoccA1 /=NoccA ) Write(6,'(/'' WARNING! NoccA  in SINT file is different from that in LOG file! Use NoccA from MO file:'',i5)')NoccA
If (NoccB1 /=NoccB ) Write(6,'(/'' WARNING! NoccB  in SINT file is different from that in LOG file! Use NoccB from MO file:'',i5)')NoccB
Rewind(3)

! Reading the overlap integrals
Do While(.not.EOF(3))
    Read(3,'(a255)')Str
    If (INDEX(Str,'*** Overlap ***')>0) Then
        Call ReadLTMatrix(3,1,Norb,MaxOrb,S,7,5,14,1)
        Exit
    Endif
Enddo  

Close(3)


! Reading MO

Open(5,File=FilMO)

Do While(.not.EOF(5))
    Read(5,'(a255)')Str
    If (INDEX(Str,'basis functions,')>0) Then
        Read(Str,'(i6,17x,i6,21x,i6)')Nbasis2,Nprim2,Ncart2
        Read(5,'(i6,20x,i6)')NoccA2,NoccB2
        Exit
    Endif
Enddo
If (Nbasis2/=Nbasis1) Then
    Write(6,'(//'' ERROR! Nbasis in MO file is different from that in SINT file! Stop.'',2i5)')Nbasis2,Nbasis1
    Stop ' ERROR! Nbasis in MO file is different from that in SINT file!'
Endif
Rewind(5)

! Reading the Alpha MO and energies
Do While(.not.EOF(5))
    Read(5,'(a255)')Str
    If (INDEX(Str,'Molecular Orbital Coefficients:')>0) Then
        Call ReadECMatrix(5,2,Norb,EA,MaxOrb,CA,21,5,10,0,2)
        Exit
    Endif
Enddo  

If (iUHF==1) Then
! Reading the Beta MO and energies
Do While(.not.EOF(5))
    Read(5,'(a255)')Str
    If (INDEX(Str,'Beta Molecular Orbital Coefficients:')>0) Then
        Call ReadECMatrix(5,2,Norb,EB,MaxOrb,CB,21,5,10,0,2)
        Exit
    Endif
Enddo  
Endif

Close(5)

End
