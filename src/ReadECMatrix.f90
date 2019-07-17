Subroutine ReadECMatrix(iU,iSkip0,N,E,LDA,C,nleft,ncol,lencol,iskip1,iskip2)

    Use Vars, Only: Iorb,iUHF
    
Implicit Real(8) (A-H,O-Z)

Real(8) C(LDA,N),E(N)

character(255) str
Character(3) buf3
Character(20) buf20


! Subroutine ReadLTMatrix reads the orbital energies E and the molecular orbital coefficients C from file iU 
!   Reading statrts from the current position of file iU
!
!   iSkip0  - number of lines to be skipped before reading of first row (the row with element A(1,1)) 
!   NLEFT - number of symbols to be skipped from the beginning of each line.
!   NCOL  - number of columns. 
!   LENCOL - nuber of symbols in each colums
!   ISKIP1  - number of lines to be skipped between E and C data
!   ISKIP2  - number of lines to be skipped between next portion of columns
!
!   E - vector of molecular energies
!   C - matrix of MO coefficients. (AO by rows, MO by columns)
!
!   All values are read by format G<lencol>.0

Do i=1,iSkip0
    Read(iU,*)
Enddo

Nport=N/ncol
Nlast=N-Nport*ncol
If (Nlast>0) Nport=Nport+1

jend=0
Do ip=1,Nport
    jbeg=jend+1
    jend=jend+ncol
    If (jend>N) jend=N
    Read(iU,'(<nleft>x,<ncol>G<lencol>.0)')(E(j),j=jbeg,jend)
    Do k=1,iSkip1
        Read(iU,*)
    Enddo
    
!    mleft=4
!    If (iUHF==1) mleft=6
    natoms=0
    Do i=1,N
        If (ip==1.and.i==1) Then        ! determine number of left spaces (it is different for different calculation types)
            Read(iU,'(a20)')buf20
            mleft=INDEX(buf20,'1')
            Backspace(iu)
        Endif
!        Read(iU,'(a255)')Str
!        Read(Str,'(<mleft>x,i3,14x,<ncol>G<lencol>.0)')iat,(C(i,j),j=jbeg,jend)

        !for debug
!        read(iu,'(a255)')Str
!        Write(6,'(3i5,a255)')ip,i,mleft,Str
!        backspace(iu)
        !
        Read(iU,'(<mleft>x,i3,14x,<ncol>G<lencol>.0)')iat,(C(i,j),j=jbeg,jend)
        If (iat>0) Then
            natoms=natoms+1
            Iorb(1,natoms)=i
            If (natoms>1) Iorb(2,natoms-1)=i-1
        Endif
    Enddo    
    Iorb(2,natoms)=N
    
    Do k=1,iskip2
        If (.not.EOF(iU)) Read(iU,*)
    Enddo
Enddo


End