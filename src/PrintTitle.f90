Subroutine PrintTitle(iUnit,nBuild)

Write(iUnit,101)nbuild

101 FORMAT(38x,'********************************************************'/ &
		   38x,'*              ReadExcitedStates v.1                   *'/ &
		   38x,'*               (build number',i6,')                   *'/ &
		   38x,'*                                                      *'/ &
		   38x,'*   Process excited states information from G0X files  *'/ &
		   38x,'*                                                      *'/ &
		   38x,'*     Originally written by Stanislav K. Ignatov       *'/ &
		   38x,'*          Theoretical Chemistry Group                 *'/ &
		   38x,'* N.I.Lobachevsky State University of Nizhny Novgorod  *'/ &
		   38x,'*                 ignatov@ichem.unn.ru                 *'/ &
		   38x,'*               http://www.qchem.unn.ru                *'/ &
		   38x,'*             Nizhny Novgorod, Russia, 2016            *'/ &
		   38x,'********************************************************'/)


End