Subroutine ReadLTMatrix(iU,iSkip0,N,LDA,A,nleft,ncol,lencol,iskip)

Implicit Real(8) (A-H,O-Z)

Real(8) A(LDA,N)

character(255) str

! Subroutine ReadLTMatrix reads low triangular matrix A from file iU 
!   Reading statrts from the current position of file iU
!   iSkip0  - number of lines to be skipped before reading of first row (the row with element A(1,1)) 
!   NLEFT - number of symbols to be skipped from the beginning of each line.
!   NCOL  - number of columns. 
!   LENCOL - nuber of symbols in each colums
!   ISKIP  - number of lines to be skipped after next portion of columns
!   A      - matrix to be read in. It will be symmetrized after reading. All values are read by format G<lencol>.0

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
    Do i=jbeg,N
        Read(iU,'(<nleft>x,<ncol>G<lencol>.0)')(A(i,j),j=jbeg,jend)
    Enddo    
    Do k=1,iskip
        If (.not.EOF(iU)) Read(iU,*)
    Enddo
Enddo

Do i=1,N
    Do j=1,i-1
        A(j,i)=A(i,j)
    Enddo
Enddo

End
