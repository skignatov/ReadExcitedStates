Module Vars
    
    Implicit Real(8) (A-H,O-Z)
    
    INteger(4), parameter:: MaxAt=500, MaxOrb=2500,MaxGrp=MaxAt
        
    Integer(4) Numat,Norb,Nelns,Nbasis,NoccA,NoccB,Nocc,iCharge,Mult,iUHF,iiUHF,iiRHF,ngrp,iSecNum/0/,iwarn/0/
    
    Integer(4) NA(MaxAt),IOccA(MaxOrb),IOccB(MaxOrb),Iorb(2,MaxAt),Igrp(0:MaxGrp,MaxAt)
    Real(8) C(3,MaxAt),             &   ! Atom cooridinates
            S(MaxOrb,MaxOrb),       &   ! Overlap integrals
            CA(MaxOrb,MaxOrb),      &   ! Alpha MO coefficients
            CB(MaxOrb,MaxOrb),      &   ! Beta MO coeffcients
            D(MaxOrb,MaxOrb),       &   ! Auxilary matrix
            Delta(MaxOrb,MaxAt),    &   ! Changes in density during excitation
            RhoA(MaxOrb,MaxAt),     &   ! Mulliken density on atom
            RhoB(MaxOrb,MaxAt),     &   ! Mulliken density on atom
            EA(MaxOrb),             &   ! Alpha MO energies
            EB(MaxOrb)              ! Beta MO energies
    
    Character(10) AName(MaxAt),AOName(MaxOrb),Anm
    
    Character(255) FilInp,FilOut,FilDat,FilMO,FilSint,FilLog
    
End module
!**************************************************************************************************
Program ReadExcitedStates

Use Vars

    Implicit Real(8) (A-H,O-Z)
    
    Integer(4), parameter:: MaxES=1000,MaxM=100,MaxSet=500
    Real(8)     EE(MaxES),              &   ! Energy of Excited state
                WN(MaxES),              &   ! Wave number
                OS(MaxES),              &   ! Oscillator strength
                S2(MaxES),              &   ! S2 value of excited state
                Qgrp(0:MaxGrp,MaxES),   &   ! Charge of group of atoms
                EScoef(MaxES,MaxM),     &   ! C coef
                EScoef1(MaxES,MaxM),    &   ! Normalized C coef
                EScoef2(MaxES,MaxM),    &   ! C2 coef
                EWO(4,MaxES,MaxSet)         ! EE, WN, OS, taups from all cycles
    Integer(4) Nmes(MaxES),nEScoef2(MaxES,MaxM),iMO/0/,iSint/0/
    Integer(4) mnESMO(2,MaxES,MaxM)
    Character(19) Sym(MaxES)
    Character(10) buf10
    Character(50) SubStr(20),Substr1(MaxAt)
    Character(20) buf20,buf21,buf22,ESMO(MaxES,MaxM)
    Character Symb3*3,Symb4*4
    
    Character(256) buf,buf1,ToUpperCase,String,StrKey1,StrKey2,Str1

    Real(8) RA(MaxAt)
    Real(8) RunAver(4)/100.d0,1000.d0,10.d0,25.d0/      ! Running averages parameters: WNbeg,WNend,WNstep,Window
    Integer(4) IndA(MaxAt)

    Real(8), allocatable::AA(:,:),sumdq(:)
    
!
! Typical header of a program.
! It reads the arguments, define the build Number, print help message, and keywords
!

narg=NArgs()
Call BuildNumber(nbuild)

iHelpRun=0
If (narg==1) Then
	iHelpRun=1
Else
	Call GetArg(INT2(1),buf)		! File opening
	buf1=ToUpperCase(buf)
	If (buf1=='/?'.or.buf1=='?'.or.buf1=='--HELP'.or.buf1=='/HELP') iHelpRun=1
Endif

		
	Call GetArg(INT2(1),FilLog)		! Input File 
        !Call FileExtension(FilInp,'.log')
	Open(5,File=FilLog,Action='READ',Share='DENYNONE')

    FilOut=FilLog
    Call FileExtension(FilOut,'.exs')
    FilDat=FilLog

    iMO=0
    iSint=0
    idatfile=0
    FilInp='None'
    If (narg>2) Then
        Call GetArg(INT2(2),FilInp)		! Additional Dat File 
        idatfile=1
	    Open(3,File=FilInp)
    Endif

! Initial printing
Open(6,File=FilOut)
Call PrintTitle(6,nBuild)
Write(6,'('' Input data file   (.LOG) : '',a255)')FilLog
Write(6,'('' Instructions file (.DAT) : '',a255)')FilInp
    
    If (idatfile==1) Then
    iDat=0
    iUHF=0
    iRHF=0
    nGrp=0
    Do While (.not.EOF(3))
        Read(3,'(a255)')String
        
        Buf1=AdjustL(ToUpperCase(String))
        If (INDEX(buf1,'MO')==1) Then
            buf1(1:2)='  '
            FilMO=AdjustL(buf1)
            iMO=1
            Write(6,'('' File of MO coefficients  : '',a255)')FilMO
            Cycle
        Endif
        
        If (INDEX(buf1,'SINT')==1) Then
            buf1(1:4)='    '
            FilSint=AdjustL(buf1)
            iSint=1
            Write(6,'('' File of overlap integrals: '',a255)')FilSint
            Cycle
        Endif

!        If (INDEX(buf1,'DAT')==1) Then
!            buf1(1:3)='   '
!            FilDat=AdjustL(buf1)
!            iDat=1
!            Cycle
!        Endif

        If (INDEX(buf1,'UHF')==1) Then
            iiUHF=1
            Write(6,'('' MO type indicated in DAT : UHF'')')
            Cycle
        Endif

        If (INDEX(buf1,'RHF')==1) Then
            iiRHF=1
            Write(6,'('' MO type indicated in DAT : RHF'')')
            Cycle
        Endif

        If (INDEX(buf1,'GROUP')==1) Then
            Do While (.not.EOF(3))
                Read(3,'(a255)')String
                If (Len_Trim(String)==0) Exit
                String=AdjustL(String)
                If (String(1:1)=='!') Cycle
                Call SubString(String,MaxAt,nsubstr,SubStr1)
                ngrp=ngrp+1
                Do i=1,nsubstr
                    Read(Substr1(i),*)iGrp(i,ngrp)
                Enddo
                iGrp(0,ngrp)=nsubstr
            Enddo
            Cycle
        Endif

        If (INDEX(buf1,'RUNAVER')==1) Then
            Call SubString(String,MaxAt,nsubstr,SubStr1)
            Do i=2,nsubstr
                Read(SubStr1(i),*)RunAver(i-1)
            Enddo
        Endif
        
        !FilOut=AdjustL(buf)
    Enddo

    Close(3)
      
    Endif
    If (ngrp>0) Write(6,'('' GROUP commands in DAT    :'',i10)')ngrp
    
    
!    
! Read .log-file
!
StrKey1='Excitation energies and oscillator strengths:'
StrKey2=' Excited State'

nescycle=0
10 continue     ! Start reading cycle for files with many ES calculations

nes=0
Do                  !While(.not.EOF(5))       ! Reading Escited States
    If (EOF(5)==.True.) Goto 20
    Read(5,'(a255)')String
    If (INDEX(String,Trim(StrKey1))>0) Then
        nescycle=nescycle+1
        Do While (.not.EOF(5))
            Read(5,'(a255)')String
            If (Len_Trim(String)==0) Cycle
            If (INDEX(String,Trim(StrKey2))==1) Then
                nes=nes+1
!                Read(String,'(19x,a19,f8.4,3x,f8.2,7x,f6.4,9x,f5.3)')Sym(nes),EE(nes),WN(nes),OS(nes),S2(nes)
                k=INDEX(String,':')
                Str1=repeat(' ',Len(Str1))
                Str1=String(k+1:Len(String))
                Call Substring(Str1,20,NSubStr,SubStr)
                Sym(nes)=AdjustL(SubStr(1))
                EE(nes)=ReadF(SubStr(2))
                WN(nes)=ReadF(SubStr(4))
                buf10=SubStr(6)
                buf10(1:2)='  '
                OS(nes)=ReadF(buf10)
                buf20=SubStr(7)
                buf20(1:7)='       '
                S2(nes)=ReadF(buf20)
                mes=0
                Do While(.not.EOF(5)) 
                    Read(5,'(a255)')String
                    If (String(1:4)=='    '.and.Len_Trim(String)>0) Then
                        mes=mes+1
                        Read(String,'(4x,a16,f10.5)')ESMO(nes,mes),ESCoef(nes,mes)
                    Else
                        Nmes(nes)=mes
                        Exit
                    Endif
                Enddo
            Else
                If (Len_Trim(String)==0) Cycle
                If (INDEX(String,'This state for optimization')>1) Cycle
                If (INDEX(String,'Copying the excited state')>1) Cycle
                Exit
            Endif
        Enddo
        Exit
    Endif
Enddo

! Processing
OStot=0.d0
OSmax=0.d0
Do i=1,Nes
    OStot=OStot+OS(i)
    If (OS(i)>OSmax) OSmax=OS(i)
Enddo

Do i=1,Nes
    C2=0.d0
    nm=Nmes(i)
    Do j=1,nm
        EScoef2(i,j)=EScoef(i,j)**2
        C2=C2+EScoef2(i,j)
    Enddo
    If (DABS(C2-1.d0)>1.d-4) Then
        ESCoef1(i,1:nm)=ESCoef(i,1:nm)/DSQRT(C2)
        EScoef2(i,1:nm)=EScoef2(i,1:nm)/C2
    Endif
    nEScoef2(i,1:nm)=IDNINT(EScoef2(i,1:nm)*10.d0)
Enddo


! Printing
Call NewSection(6)        
Write(6,'(/'' Set    of Excited States :'',i10)')nescycle
Write(6,'( '' Number of Excited States :'',i10)')nes
Write(6,'(/'' No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2           Excitation spectrum'')')
Write(6,'(1x,160(''-''))')
Do i=1,nes
    k=IDNINT(OS(i)/OSmax*50.d0)
    String=repeat(' ',Len(String))
    Do kk=1,k
          String(kk:kk)='*'
    Enddo
    Write(6,'(i4,6x,a19,f8.4,3x,f8.2,6x,f7.4,9x,f10.3,10x,i4,f8.2,f8.4''|'',a50)')i,Sym(i),EE(i),WN(i),OS(i),S2(i),i,WN(i),OS(i),String(1:50)
Enddo
Write(6,'(1x,160(''-''))')

Call NewSection(6)        
Write(6,'(///28x,''*** Radiative parameters of Si->S0 transition (in SI units) ***'')')
Write(6,'(  /'' No.  State Energy,eV WaveLen,nm   S2      A21(=Kf)   B12w        B12f         s0          f12     (m12)**2        S21        tau        tau,ps'')')
Write(6,'(1x,160(''-''))')
nt=0
ns=0
Do i=1,nes
    A21=0.d0
    B12w=0.d0
    B12f=0.d0
    s0=0.d0
    f12=OS(i)
    xm12sq=0.d0
    S21=0.d0
    If (INDEX(AdjustL(Sym(i)),'T')==1) Then
        nt=nt+1
        Write(Symb3,'(i3)')nt        
        Symb4='T'//AdjustL(Symb3)
        Cycle
    ElseIf (INDEX(AdjustL(Sym(i)),'S')==1) Then
        ns=ns+1
        Write(Symb3,'(i3)')ns
        Symb4='S'//AdjustL(Symb3)
    Endif
    Call ConvertRadiativeProperties(EE(i),A21,B12w,B12f,s0,f12,xm12sq,S21)
    tau=1.d0/A21
    taups=tau*1.d12
    Write(6,'(i4,2x,a4,f10.4,f10.2,f8.3,10g12.4)')i,Symb4,EE(i),WN(i),S2(i),A21,B12w,B12f,s0,f12,xm12sq,S21,tau,taups
    EWO(1,i,nescycle)=EE(i)
    EWO(2,i,nescycle)=WN(i)
    EWO(3,i,nescycle)=OS(i)
    EWO(4,i,nescycle)=taups
Enddo    
Write(6,'(1x,160(''-''))')
Write(6,'('' Notes:'')')
Write(6,'('' A21  - Einstein coefficient A of spontaneous emission. It is equal to emission rate constant Kf'')')
Write(6,'('' B12w - Einstein absorption coefficient B in angular frequencies'')')
Write(6,'('' B12f - Einstein absorption coefficient B in cyclic  frequencies'')')
Write(6,'('' s0   - Absorption cross section'')')
Write(6,'('' f12  - Oscillator strength, dimensionless'')')
Write(6,'('' (m12)**2  - Transition dipole moment squared'')')
Write(6,'('' S21  - Line strength'')')
Write(6,'('' tau  - State lifetime calculated as 1/Kf = 1/A21'')')
Write(6,'('' All quantities correspond to the Si --> S0 transitions in the Franck-Condon electric dipole appoximation'')')
Write(6,'('' All quantities are in SI units, conversion factors are taken from [Hillborn R.C., Am.J.Phys., 1982, 50, 982]'')')


Call NewSection(6)        
Write(6,'(///28x,'' *** MO contributions ***'')')
Write(6,'(  /'' No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2'')')
Do i=1,nes
    Write(6,'(i4,6x,a19,f8.4,3x,f8.2,6x,f7.4,9x,f10.3)')i,Sym(i),EE(i),WN(i),OS(i),S2(i)
    Write(6,'(''       m             MOs              C         Cnorm    C2norm      C2norm'')')
    Do j=1,nmes(i)
        k=nEScoef2(i,j)
        buf10='          '
        Do kk=1,k
            buf10(kk:kk)='*'
        Enddo
        Write(6,'(4x,i4,4x,a16,6x,3f10.5,5x,''|'',a10)')j,ESMO(i,j),ESCoef(i,j),EScoef1(i,j),EScoef2(i,j),buf10
    Enddo
    Write(6,*)
Enddo
nes0=nes

goto 10
20 continue
nes=nes0

Close(5)

!
! Cross-state energies
!
Call NewSection(6)        
Write(6,'(///1x,'' *** Transition energies and wavelengths between different states ***'')')
Allocate (AA(nes,nes))
eV2nm=6.62d-34 * 3.d8 * 1.d9 /1.60d-19
Do i=1,nes
    Do j=1,i
        de=EE(i)-EE(j)
        AA(i,j)=de
        If (i/=j) AA(j,i)=eV2nm/de
    Enddo
Enddo
Mode=1      !  Mode     - print mode: 0  - square matrix form,  1 - lower triangle form
iUnit=6     !  iUnit    - printing unit
nf=12       !  nf,nd    - format description F<nf>.<nd>
nd=4        !
NumCol=10   !  NumCol   - number of columns in triangular form
LDA=nes     !  LDA      - leading dimenion of A
Call PrintMatrix(Mode,iUnit,nf,nd,NumCol,LDA,Nes,AA,' S(icol) <- S(irow) transition energies in eV')
AA=Transpose(AA)
Write(6,*)
nd=2
Call NewSection(6)        
Call PrintMatrix(Mode,iUnit,nf,nd,NumCol,LDA,Nes,AA,' S(icol) <- S(irow) transition wavelengths in nm')


! Printing data for all datasets
If (nescycle>1) Then
    Call NewSection(6)        
    Write(6,'(//'' Excitation energies from all data sets (columns - excitations, rows - datasets):'')')
    Write(6,'(6x,<nes>i12)')(j,j=1,nes)
    Do i=1,nescycle
        Write(6,'('' d.s.'',i4,<nes>f12.4)')i,EWO(1,1:nes,i)
    Enddo
    
    Call NewSection(6)        
    Write(6,'(//'' Wavenumbers from all data sets (columns - excitations, rows - datasets):'')')
    Write(6,'(6x,<nes>i12)')(j,j=1,nes)
    Do i=1,nescycle
        Write(6,'('' d.s.'',i4,<nes>f12.2)')i,EWO(2,1:nes,i)
    Enddo
    
    Call NewSection(6)        
    Write(6,'(//'' Oscilllator strengths from all data sets (columns - excitations, rows - datasets):'')')
    Write(6,'(6x,<nes>i12)')(j,j=1,nes)
    Do i=1,nescycle
        Write(6,'('' d.s.'',i4,<nes>f12.4)')i,EWO(3,1:nes,i)
    Enddo
    
    Call NewSection(6)        
    Write(6,'(//'' Radiative lifetimes in ps from all data sets (columns - excitations, rows - datasets):'')')
    Write(6,'(6x,<nes>i12)')(j,j=1,nes)
    Do i=1,nescycle
        Write(6,'('' d.s.'',i4,<nes>f12.1)')i,EWO(4,1:nes,i)
    Enddo
Endif


! Read MO
If (iMO==1.and.iSint==1) Then

    Call NewSection(6)        
    If (nescycle>1) Write(6,'(/ '' WARNING! Further analysis will be performed for ES set:'',i5)')nescycle
    Write(6,'(//'' .DAT file is found in the command string.''/'' Starting the charge redistribution calculations...'')')
    Write(6,'( /'' File with MO coefficient         :'',255a1)')(FilMO(j:j),j=1,Len_Trim(FilMO))
    Write(6,'(  '' File with overlap integrals      :'',255a1)')(FilSint(j:j),j=1,Len_Trim(FilSint))
    Write(6,'(  '' File with charge and multiplicity:'',255a1)')(FilDat(j:j),j=1,Len_Trim(FilDat))
    
    Call ReadMolData

    Do i=1,nes
        Do j=1,nmes(i)
            buf20=ESMO(i,j)
            ii1=0
            ii2=0
            ii1=INDEX(buf20,'->')
            ii2=INDEX(buf20,'<-')
            ii12=ii1+ii2
            iex=1                   ! Exc ->
            If (ii2>0) iex=-1       ! Exc <-
            buf21=repeat(' ',20)
            buf22=repeat(' ',20)
            buf21=Trim(AdjustL(buf20(1:ii12-1)))
            buf22=Trim(AdjustL(buf20(ii12+2:20)))
            i1a=INDEX(buf21,'A')
            i1b=INDEX(buf21,'B')
            i2a=INDEX(buf22,'A')
            i2b=INDEX(buf22,'B')
            i1ab=i1a+i1b
            i2ab=i2a+i2b
            If (i1ab>0) buf21(i1ab:i1ab)=' '
            If (i2ab>0) buf22(i2ab:i2ab)=' '
            Read(buf21,*)nm1        ! left MO
            Read(buf22,*)nm2        ! right MO
            If (i1b>0) nm1=-nm1     ! Left MO - Beta
            If (i2b>0) nm2=-nm2     ! Right MO - Beta
            If (iex>0) Then         ! Case ->
                m=nm1               ! m - source MO
                n=nm2               ! n - excited MO
            Else
                m=nm2               ! m - source MO
                n=nm1               ! n - excited MO
            Endif
            mnESMO(1,i,j)=m         ! mnESMO(1,:,:) -source MO, >0 - Alfa, <0 beta
            mnESMO(2,i,j)=n         ! mnESMO(1,:,:) -excited MO, >0 - Alfa, <0 beta
        Enddo
    Enddo

!    Do i=1,Norb
!        Write(6,'(<norb>f10.4)')S(i,1:Norb)
!    Enddo
    
    ! Density RhoA(i,A)
    Do i=1,Norb
        xni=IoccA(i)
        Do iA=1,Numat
            io1=Iorb(1,iA)
            io2=Iorb(2,iA)
            tmp=0.d0
            Do k=io1,io2
                Do l=1,Norb   
                    tmp=tmp+CA(k,i)*CA(l,i)*S(k,l)
                Enddo
            Enddo
            RhoA(i,iA)=tmp  !*xni
        Enddo
    Enddo
    
!    Write(6,*)
!    work=0.d0
!    Do iA=1,Numat
!        tmp=0.d0
!        Do i=1,Norb
!            tmp=tmp+RhoA(i,iA)
!        Enddo
!        Write(6,'(i5,f12.5)')iA,tmp
!        work=work+tmp
!    Enddo
!    Write(6,'(5x,f12.5)')work


    ! Density RhoB(i,A)
    Do i=1,Norb
        xni=IoccB(i)
        Do iA=1,Numat
            io1=Iorb(1,iA)
            io2=Iorb(2,iA)
            tmp=0.d0
            Do k=io1,io2
                Do l=1,Norb
                    tmp=tmp+CB(k,i)*CB(l,i)*S(k,l)
                Enddo
            Enddo
            RhoB(i,iA)=tmp  !*xni
        Enddo
    Enddo

    
    ! Delta Rho
    Do ie=1,nes
        Do iA=1,Numat
            tmp=0.d0
            Do j=1,nmes(ie)
                x2=EScoef2(ie,j)
                m=mnESMO(1,ie,j)
                n=mnESMO(2,ie,j)
                If (m>0) Then       
                    rm=RhoA(m,iA)   ! Source Rho alfa
                Else
                    rm=RhoB(-m,iA)  ! Source Rho beta
                Endif
                If (n>0) Then
                    rn=RhoA(n,iA)   ! Excited Rho alfa
                Else
                    rn=RhoB(-n,iA)  ! Excited Rho beta
                Endif
                tmp=tmp+x2*(rn-rm)  ! DeltaQ = RhoExcited - RhoSource
            Enddo
            Delta(ie,iA)=-tmp       ! Negative sign because this is charge, not density  (Q = -Rho)
        Enddo
    Enddo
    
    ! Printing
    Call NewSection(6)        
    nPort=nes/10+1
    If (nes==(nport-1)*10) nport=nport-1
    nesbeg=1
    nesend=10
    Write(6,'(//'' Changes in Mulliken atomic charges during excitations  dQ = Q(Ex.St.) - Q(X) :'')')
 Do ip=1,nport
    If (nesend>nes)nesend=nes
    Write(6,'(/'' Excitations:''<nes>(i6,6x))')(j,j=nesbeg,nesend)
    Write(6,'('' Energy, eV :''<nes>(f9.2,3x))')(EE(j),j=nesbeg,nesend)
    Write(6,'('' WaveLen, nm:''<nes>(f9.2,3x))')(WN(j),j=nesbeg,nesend)
    Write(6,'('' Osc.Str.   :''<nes>(f9.2,3x))')(OS(j),j=nesbeg,nesend)
    Write(6,*)
    Do iA=1,Numat
        Call SetAName(NA(iA),iA,Anm)
        Write(6,'(a10,<nes>f12.6)')Anm,Delta(nesbeg:nesend,iA)
    Enddo
    nesbeg=nesend+1
    nesend=nesend+10
Enddo
    
    
    Call NewSection(6)        
    Write(6,'(//'' Changes in Mulliken atomic charges for each excitation (sorted |dQ| from max to min):'')')
    Do ie=1,nes
        Write(6,'(/'' Excitation'',i4,''   Energy, eV:'',f8.3,''   Wavelength, nm:'',f10.2,''   Osc.Strength:'',f10.6)')ie,EE(ie),WN(ie),OS(ie)
        Write(6,'(''Atom      dQ=Q(ExSt)-Q(X)   dQ**2      Sum[dQ]'')')
        Do i=1,Numat
            inda(i)=i
        Enddo
        ra(1:Numat)=DABS(Delta(ie,1:Numat))
        Call Sort2(Numat,ra,inda)
        sra=0.d0
        Do ia=Numat,1,-1
            iia=inda(ia)
            nna=NA(iia)
            Call SetAname(nna,iia,Anm)
            rra=Delta(ie,iia)
            rra2=rra*rra
            sra=sra+ra(ia)
            Write(6,'(a10,3f12.6)')Anm,rra,rra2,sra
        Enddo
    Enddo

    If (ngrp>0) Then
        
        Call NewSection(6)  
        
        Do i=1,Ngrp
            If (iGrp(1,i)==-1) Then
                ii=0
A:              Do ia=1,Numat
                    Do j=1,ngrp
                        If (j==i) Cycle
                        kend=iGrp(0,j)
                        Do k=1,kend
                            iag=iGrp(k,j)
                            If (iag==ia) Cycle A
                        Enddo
                    Enddo
                    ii=ii+1
                    iGrp(ii,i)=ia
                Enddo A
                iGrp(0,i)=ii
            Endif
        Enddo

        
        Write(6,'(//'' Changes in group charges due to the excitations:''/)')
        nn=0
        Do i=1,ngrp
            ig0=igrp(0,i)
            Write(6,'('' Group '',i3,''  ('',i3,'' atoms)'',''   Atoms:'',<ig0>i4)')i,ig0,(iGrp(j,i),j=1,ig0)
            nn=nn+ig0
        Enddo        
        Write(6,'('' Group   0  ('',i3,'' atoms) - Sum of all groups '')')nn

        
        Write(6,'(/'' Excitations:                                      Atom groups:'')')
        Write(6,'('' ie      S2      E, ev    WL, nm     OS       '',100i10)')(j,j=1,ngrp),0
        Do ie=1,nes
            sq=0.d0
            Do i=1,ngrp
                tmp=0.d0
                natgrp=igrp(0,i)
                Do j=1,natgrp
                    iagrp=igrp(j,i)
                    tmp=tmp+Delta(ie,iagrp)
                Enddo
                qgrp(i,ie)=tmp
                sq=sq+tmp
            Enddo
            qgrp(0,ie)=sq
            Write(6,'(i3,4f10.4,5x,100f10.4)')ie,S2(ie),EE(ie),WN(ie),OS(ie),(qgrp(j,ie),j=1,ngrp),qgrp(0,ie)
        Enddo
        
        Write(6,'(//)')
        Call NewSection(6)        
        Write(6,'(/''Group   E, eV    |dQ|   Sign(dQ)/2  DSQRT(|dQ|)'')')
        Do ie=1,nes
            Do i=1,ngrp
                q=qgrp(i,ie)
                Write(6,'(i3,100f10.4)')i,EE(ie),DABS(q),-DSIGN(0.5d0,q),DSQRT(DABS(q))
            Enddo
        Enddo
        
    Endif
        
    
    ! Running averages using window
    Call NewSection(6)        
    If (ngrp==0) Write(6,'(/'' Atom groups (GROUPS keyword) are not defined in the .dat file. Group analysis is skipped.'')')
    If (ngrp>0) Then
        Allocate(sumdq(0:ngrp))
        WNbeg=RunAver(1)
        WNend=RunAver(2)
        WNstep=RunAver(3)
        Window=RunAver(4)
        nWN=INT((WNend-WNbeg))/WNstep+1
        Write(6,'(//'' Running averages for '',i3,'' groups -- Graph of DOS and dQ vs WaveLength using the rectangular window of '',f8.2,'' nm'')')ngrp+1,Window
        Write(6,'(  '' (EDOS is a density of electronic states and dQ is the charge transfered to these states during photoexcitations)'')')
        Write(6,'(  '' Use RUNAVER command in the .dat-file to change defaults:  RUNAVER <WLbeg[100.]> <WLend[1000.]> <WLstep[10.]> <WindowWidth[25.]>'')')
        Write(6,'( /''   i    WL     WLbeg   WLend    eDOS     SumEDOS         dQ for different groups'')')
        Write(6,'(  ''        nm      nm      nm      nm-1          '',5x,<ngrp+1>i10))')(j,j=0,ngrp)
        sumdq=0.d0
        sumedos=0.d0
        Do iw=1,nWN
            w=WNbeg+WNstep*(iw-1)
            w1=w-Window*0.5d0
            w2=w+Window*0.5d0
            Write(6,'(/i4,3f8.2\)')iw,w,w1,w2
            
            ! DOS of electronic states
            idos=0.d0
            Do ie=1,nes
                If (WN(ie)>=w1.and.WN(ie)<w2) idos=idos+1
            Enddo
            edos=Dble(idos)/Window  !*WNstep
            sumedos=sumedos+edos*WNstep !/(WNend-WNbeg)
            Write(6,'(2f10.4,''     ''\)')edos,sumedos
            
            ! Charge transfer vs wavelengths
            Do jgrp=0,ngrp
                tmp=0.d0
                Do ie=1,nes
                    If (WN(ie)>=w1.and.WN(ie)<w2) Then
                        tmp=tmp+qgrp(jgrp,ie)
                    Endif
                Enddo
                dq=tmp/Window
                sumdq(jgrp)=sumdq(jgrp)+dq*WNstep
                Write(6,'(f10.4\)')dq
            Enddo
        Enddo
        Write(6,'(//'' Group                     :'',27x,<ngrp+1>(i5,5x))')(jgrp,jgrp=0,ngrp)
        Write(6,'(  '' Sum dQ for all wavelengths:'',25x,<ngrp+1>f10.4\)')(sumdq(jgrp),jgrp=0,ngrp)
    Endif
                
    
Else

    Write(6,'(//'' .DAT-file is not found in the command string.''/'' Charge redistributions due to excitations will not be performed... '')')
    
Endif


Write(6,*)

If (iwarn>0) Write(6,'(//'' *** There were WARNINGs during the work. Check results carefully! ***''/)')

Close(6)

End
!***************************************************
Subroutine HeapSort(n,ra,ia)
Implicit Real(8) (A-H,O-Z)

Real(8) ra(n),rb(n,n)
Integer(4) ia(n)

Call dSVRGPx(Numat,ra,rb,ia)

End
!***************************************************
Subroutine ConvertRadiativeProperties(ExcitationEnergy,A21,B12w,B12f,s0,f12,xm12sq,S21)
Implicit Real(8) (A-H,O-Z)

Real(8) X(7),Y(7),A(7,7)  ! Conversion matrix

! Program performs conversion between 7 various radiative properties for transition 2->1:
! A21 - Einstein coefficient A 
! B12w, B12f -  Einstein coefficients B in circular and normal frequency
! s0  - Absorption cross section (sigma0)
! f12 - oscillator strength
! xm12sq    - square of transition dipole moment mu21**2
! S21 - line strength
! 
! All quantities are proposed to be in SI units
!
! Conversion factors are taken from [Hillborn R.C., Am.J.Phys., 1982, 50, 982]

! On input, all quantities should be set to 0.d0 except that one which is to be converted (its value should be >0.d0).
! ExcitationEnergy should be set in Electron-Volts



Pi=3.141592653589793d0		! Pi number
cc=299792458.d0			    ! Light velocity  (m/s)
h=6.62606876d-34			! Planck constant in J*s
h1=h/(2.d0*Pi)              ! Reduced Planck constant in J*s
e0=8.854187817620d-12       ! Dielectric permittivity of vacuum (in SI units F/m = A**2 *s**4 /kg /m**3 = C**2 N**(-1) m**(-2) = C/V/m = C**2/(J*m) )
e=1.60217657d-19            ! Electron charge in C
em=9.10938356d-31           ! ElecctronMassin kg

eV2J=e
ee=ExcitationEnergy*ev2J    ! Excitation energy in J
w21=ee/h1                   ! Circular frequency in rad/s
f=ee/h                     ! Cyclic frequency in Hz
xl=h*cc/ee                 ! Wave length in m

X(1)=A21
X(2)=B12w
X(3)=B12f
X(4)=s0
X(5)=f12
X(6)=xm12sq
X(7)=S21

iInp=0
Do i=1,7
    If (X(i)>0.d0) Then
        iInp=i
        Xinp=X(i)
        Exit
    Endif
Enddo
If (iInp<=0.or.iInp>7) Return

g1=1.d0                 ! State degenarcies
g2=1.d0

! Conversion matrix
A(2,1)=(g2*Pi**2*cc**2)         /(g1*h1*w21**3)
A(3,1)=(g2*cc**3)               /(g1*8.d0*Pi*h*f**3)
A(3,2)=(1.d0)                   /(2.d0*Pi)
A(4,1)=(g2*xl**2)               /(4.d0*g1)
A(4,2)=(h1*w21)                 /(cc)
A(4,3)=(h*w21)                  /(cc)
A(5,1)=(g2*2.d0*Pi*e0*em*cc**3) /(g1*w21**2*e**2)
A(5,2)=(2.d0*e0*em*h1*w21)      /(Pi*e**2)
A(5,3)=(4.d0*e0*em*h1*w21)      /(e**2)
A(5,4)=(2.d0*e0*em*cc)          /(Pi*e**2)
A(6,1)=(3.d0*e0*h*cc**3)        /(2.d0*w21**3)
A(6,2)=(3.d0*g1*e0*h1**2)       /(g2*Pi)
A(6,3)=(6.d0*g1*e0*h1**2)       /(g2)
A(6,4)=(3.d0*g1*e0*h1*cc)       /(g2*Pi*w21)
A(6,5)=(3.d0*g1*h1*e**2)        /(2.d0*g2*em*w21)
A(7,1)=(g2*3.d0*e0*h*cc**3)     /(2.d0*w21**3)
A(7,2)=(3.d0*g1*e0*h1**2)       /(Pi)
A(7,3)=(6.d0*g1*e0*h1**2)
A(7,4)=(3.d0*g1*e0*h1*cc)       /(Pi*w21)
A(7,5)=(3.d0*g1*h1*e**2)        /(2.d0*w21*em)
A(7,6)=(g2)

Do i=1,7
    A(i,i)=1.d0
Enddo

Do i=1,7
    Do j=1,i-1
        A(j,i)=1.d0/A(i,j)
    Enddo
Enddo

!Do i=1,7
!    Write(6,'(7g12.3)')(A(i,j),j=1,7)
!Enddo
 
! Conversion
Do i=1,7
    aa=A(i,iInp)
    If (i>iInp) aa=A(iInp,i)
    X(i)=aa*Xinp
Enddo

A21 =   X(1)
B12w=   X(2)
B12f=   X(3)
s0  =   X(4)
f12 =   X(5)
xm12sq= X(6)
S21 =   X(7)

End
!*********************************************************************************
Subroutine NewSection(iU)
Use Vars, Only: iSecNum
Implicit Real(8) (A-H,O-Z)
iSecNum=iSecNum+1
Write(iU,'(//'' ###Section:'',i3)')iSecNum
End



    

        



        
    

