! ***************************************************************************************************************
! Subroutines to print out matrices in various formats
!
! PrintMatrix(Mode,iUnit,nf,nd,NumCol,LDA,N,A) -
!                               - general purpose program to print matrix in rectangular or triangular form
!
! PrintVecMat(iUnit,nf,nd,NumCol,ldvec,ldmat,Mvec,N,lenCvec,iCode,Rvec,Ivec,Cvec,Amat,lenCol0,Col0vec,Col0mat) - 
!                               - main subroutine to print matrix with accompanying vectors 
!                                (e.g. eigenvectors with eigenvalues and their occupancies and symmetries)
! PrintvecMat1                  - a version of printVecMat with smaller number of parameters
!
! PrintMO(iUnit,nf,nd,NumCol)   - driver to PrintVecMat adapting the printing of the energies and MO's accompanied 
!                                 with their symmetry, occupancy etc.
!****************************************************************************************************************
Subroutine PrintMatrix(Mode,iUnit,nf,nd,NumCol,LDA,N,A,Title)
Implicit Real(8) (A-H,O-Z)

Real(8) A(LDA,N)
Character(*) Title

!
! Subroutine PrintMatrix prints to iUnit
! the matrix A
!
!  Mode     - print mode: 0  - square matrix form,  1 - lower triangle form
!  iUnit    - printing unit
!  nf,nd    - format description F<nf>.<nd>
!  NumCol   - number of columns in triangular form
!  LDA      - leading dimenion of A
!  N        - order of A matrix
!  A        - matrix to be printed
!


If (iUnit<=0.or.N<1) Return

lt=Len_Trim(Title)
If (lt>0) Then
    Write(iUnit,'(/<lt>a1/)')(Title(j:j),j=1,lt)
Endif


If (Mode==0) Then
    nc=Min0(NumCol,N)
!   Rectangular format
	jb=0
	10 ja=jb+1
		jb=jb+nc
		If (jb>N) jb=N
		Write(iUnit,'(/5x,<NumCol>(i<nf-nd+1>,<nd-1>x))')(j,j=ja,jb)
		Write(iUnit,'(1x,<NumCol*Nf+4>a1)')('-',i=1,nc*Nf+4)
		Do i=1,N
			Write(iUnit,'(i4,1x,<NumCol>f<nf>.<nd>)')i,(A(i,j),j=ja,jb)
		Enddo
	If (jb<N) Goto 10
	Return

Else
! Triangular format

	jb=0
	20 ja=jb+1
		jb=jb+NumCol
		If(jb>N)jb=N
		Write(iUnit,'(/5x,<NumCol>(i<nf-nd+1>,<nd-1>x))')(j,j=ja,jb)
        Write(iUnit,'(1x,a4,<NumCol>a12)')'----',('------------',i=1,Min(NumCol,jb-ja+1))
		Do i=ja,N
			Write(iUnit,'(i4,1x,<NumCol>f<nf>.<nd>)')i,(A(i,j),j=ja,MIN0(i,jb))
		Enddo
		If (jb<N) Goto 20
		Return

Endif


End
