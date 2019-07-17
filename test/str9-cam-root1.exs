                                      ********************************************************
                                      *              ReadExcitedStates v.1                   *
                                      *               (build number   147)                   *
                                      *                                                      *
                                      *   Process excited states information from G0X files  *
                                      *                                                      *
                                      *     Originally written by Stanislav K. Ignatov       *
                                      *          Theoretical Chemistry Group                 *
                                      * N.I.Lobachevsky State University of Nizhny Novgorod  *
                                      *                 ignatov@ichem.unn.ru                 *
                                      *               http://www.qchem.unn.ru                *
                                      *             Nizhny Novgorod, Russia, 2016            *
                                      ********************************************************

 Input data file   (.LOG) : str9-cam-root1.log                                                                                                                                                                                                                                             
 Instructions file (.DAT) : str9-cam-root1.dat                                                                                                                                                                                                                                             
 File of MO coefficients  : TI2MEG6-6D7F-60SMO.LOG                                                                                                                                                                                                                                         
 File of overlap integrals: TI2MEG6-6D7F-60SMO.LOG                                                                                                                                                                                                                                         

 Set    of Excited States :         1
 Number of Excited States :         4

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2           Excitation spectrum
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1      Singlet-A            4.3047     288.02       1.4208              0.000             1  288.02  1.4208|**************************************************
   2      Singlet-A            4.8959     253.24       0.0173              0.000             2  253.24  0.0173|*                                                 
   3      Singlet-A            5.1090     242.68       0.0091              0.000             3  242.68  0.0091|                                                  
   4      Singlet-A            5.1948     238.67       0.0008              0.000             4  238.67  0.0008|                                                  
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------



                            *** Radiative parameters of Si->S0 transition (in SI units) ***

 No.  State Energy,eV WaveLen,nm   S2      A21(=Kf)   B12w        B12f         s0          f12     (m12)**2        S21        tau        tau,ps
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1  S1      4.3047    288.02   0.000  0.1142E+10  0.1030E+23  0.1639E+22  0.2369E-04   1.421      0.2085E+58  0.2085E+58  0.8753E-09   875.3    
   2  S2      4.8959    253.24   0.000  0.1799E+08  0.1103E+21  0.1755E+20  0.2885E-06  0.1730E-01  0.2887E+56  0.2887E+56  0.5557E-07  0.5557E+05
   3  S3      5.1090    242.68   0.000  0.1031E+08  0.5558E+20  0.8845E+19  0.1517E-06  0.9100E-02  0.1585E+56  0.1585E+56  0.9702E-07  0.9702E+05
   4  S4      5.1948    238.67   0.000  0.9368E+06  0.4805E+19  0.7648E+18  0.1334E-07  0.8000E-03  0.1416E+55  0.1416E+55  0.1067E-05  0.1067E+07
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Notes:
 A21  - Einstein coefficient A of spontaneous emission. It is equal to emission rate constant Kf
 B12w - Einstein absorption coefficient B in angular frequencies
 B12f - Einstein absorption coefficient B in cyclic  frequencies
 s0   - Absorption cross section
 f12  - Oscillator strength, dimensionless
 (m12)**2  - Transition dipole moment squared
 S21  - Line strength
 tau  - State lifetime calculated as 1/Kf = 1/A21
 All quantities correspond to the Si --> S0 transitions in the Franck-Condon electric dipole appoximation
 All quantities are in SI units, conversion factors are taken from [Hillborn R.C., Am.J.Phys., 1982, 50, 982]



                             *** MO contributions ***

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2
   1      Singlet-A            4.3047     288.02       1.4208              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     109 ->113               0.10616   0.15434   0.02382     |          
       2     112 ->113               0.67959   0.98802   0.97618     |**********
 
   2      Singlet-A            4.8959     253.24       0.0173              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     109 ->115               0.10649   0.15701   0.02465     |          
       2     110 ->113               0.54932   0.80994   0.65600     |*******   
       3     112 ->115               0.38327   0.56511   0.31935     |***       
 
   3      Singlet-A            5.1090     242.68       0.0091              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     109 ->118              -0.17878  -0.26861   0.07215     |*         
       2     111 ->113               0.45927   0.69003   0.47615     |*****     
       3     111 ->117               0.29351   0.44099   0.19447     |**        
       4     112 ->118               0.33757   0.50718   0.25724     |***       
 
   4      Singlet-A            5.1948     238.67       0.0008              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     107 ->114               0.17820   0.26937   0.07256     |*         
       2     108 ->113               0.15747   0.23803   0.05666     |*         
       3     109 ->114               0.34358   0.51935   0.26973     |***       
       4     112 ->114               0.51289   0.77528   0.60106     |******    
 

 Set    of Excited States :         2
 Number of Excited States :         4

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2           Excitation spectrum
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1      Singlet-A            3.8426     322.66       1.4795              0.000             1  322.66  1.4795|**************************************************
   2      Singlet-A            4.7666     260.11       0.0105              0.000             2  260.11  0.0105|                                                  
   3      Singlet-A            4.8908     253.50       0.0012              0.000             3  253.50  0.0012|                                                  
   4      Singlet-A            4.9598     249.98       0.0212              0.000             4  249.98  0.0212|*                                                 
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------



                            *** Radiative parameters of Si->S0 transition (in SI units) ***

 No.  State Energy,eV WaveLen,nm   S2      A21(=Kf)   B12w        B12f         s0          f12     (m12)**2        S21        tau        tau,ps
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1  S1      3.8426    322.66   0.000  0.9479E+09  0.1201E+23  0.1912E+22  0.2467E-04   1.479      0.1938E+58  0.1938E+58  0.1055E-08   1055.    
   2  S2      4.7666    260.11   0.000  0.1035E+08  0.6873E+20  0.1094E+20  0.1751E-06  0.1050E-01  0.1706E+56  0.1706E+56  0.9660E-07  0.9660E+05
   3  S3      4.8908    253.50   0.000  0.1246E+07  0.7656E+19  0.1218E+19  0.2001E-07  0.1200E-02  0.2000E+55  0.2000E+55  0.8029E-06  0.8029E+06
   4  S4      4.9598    249.98   0.000  0.2263E+08  0.1334E+21  0.2123E+20  0.3535E-06  0.2120E-01  0.3584E+56  0.3584E+56  0.4419E-07  0.4419E+05
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Notes:
 A21  - Einstein coefficient A of spontaneous emission. It is equal to emission rate constant Kf
 B12w - Einstein absorption coefficient B in angular frequencies
 B12f - Einstein absorption coefficient B in cyclic  frequencies
 s0   - Absorption cross section
 f12  - Oscillator strength, dimensionless
 (m12)**2  - Transition dipole moment squared
 S21  - Line strength
 tau  - State lifetime calculated as 1/Kf = 1/A21
 All quantities correspond to the Si --> S0 transitions in the Franck-Condon electric dipole appoximation
 All quantities are in SI units, conversion factors are taken from [Hillborn R.C., Am.J.Phys., 1982, 50, 982]



                             *** MO contributions ***

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2
   1      Singlet-A            3.8426     322.66       1.4795              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     112 ->113              -0.68897  -1.00000   1.00000     |**********
 
   2      Singlet-A            4.7666     260.11       0.0105              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     110 ->113              -0.50616  -0.75099   0.56398     |******    
       2     111 ->113              -0.14916  -0.22131   0.04898     |          
       3     112 ->115               0.41931   0.62213   0.38704     |****      
 
   3      Singlet-A            4.8908     253.50       0.0012              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     107 ->114               0.15009   0.22370   0.05004     |*         
       2     108 ->113              -0.13109  -0.19538   0.03817     |          
       3     109 ->114               0.32427   0.48330   0.23358     |**        
       4     112 ->114               0.55255   0.82353   0.67821     |*******   
 
   4      Singlet-A            4.9598     249.98       0.0212              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     109 ->115               0.11990   0.17419   0.03034     |          
       2     109 ->118              -0.10119  -0.14700   0.02161     |          
       3     110 ->113              -0.20356  -0.29572   0.08745     |*         
       4     111 ->113               0.48053   0.69809   0.48734     |*****     
       5     111 ->117              -0.25017  -0.36344   0.13209     |*         
       6     112 ->115              -0.11316  -0.16439   0.02703     |          
       7     112 ->118               0.25089   0.36448   0.13285     |*         
       8     112 ->119              -0.19627  -0.28513   0.08130     |*         
 

 Set    of Excited States :         3
 Number of Excited States :         4

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2           Excitation spectrum
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1      Singlet-A            3.4453     359.87       1.5292              0.000             1  359.87  1.5292|**************************************************
   2      Singlet-A            4.5838     270.48       0.0027              0.000             2  270.48  0.0027|                                                  
   3      Singlet-A            4.7103     263.22       0.0008              0.000             3  263.22  0.0008|                                                  
   4      Singlet-A            4.8205     257.20       0.0534              0.000             4  257.20  0.0534|**                                                
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------



                            *** Radiative parameters of Si->S0 transition (in SI units) ***

 No.  State Energy,eV WaveLen,nm   S2      A21(=Kf)   B12w        B12f         s0          f12     (m12)**2        S21        tau        tau,ps
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1  S1      3.4453    359.87   0.000  0.7876E+09  0.1385E+23  0.2204E+22  0.2550E-04   1.529      0.1796E+58  0.1796E+58  0.1270E-08   1270.    
   2  S2      4.5838    270.48   0.000  0.2462E+07  0.1838E+20  0.2925E+19  0.4502E-07  0.2700E-02  0.4218E+55  0.4218E+55  0.4062E-06  0.4062E+06
   3  S3      4.7103    263.22   0.000  0.7702E+06  0.5299E+19  0.8434E+18  0.1334E-07  0.8000E-03  0.1284E+55  0.1284E+55  0.1298E-05  0.1298E+07
   4  S4      4.8205    257.20   0.000  0.5384E+08  0.3457E+21  0.5501E+20  0.8905E-06  0.5340E-01  0.8773E+56  0.8773E+56  0.1857E-07  0.1857E+05
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Notes:
 A21  - Einstein coefficient A of spontaneous emission. It is equal to emission rate constant Kf
 B12w - Einstein absorption coefficient B in angular frequencies
 B12f - Einstein absorption coefficient B in cyclic  frequencies
 s0   - Absorption cross section
 f12  - Oscillator strength, dimensionless
 (m12)**2  - Transition dipole moment squared
 S21  - Line strength
 tau  - State lifetime calculated as 1/Kf = 1/A21
 All quantities correspond to the Si --> S0 transitions in the Franck-Condon electric dipole appoximation
 All quantities are in SI units, conversion factors are taken from [Hillborn R.C., Am.J.Phys., 1982, 50, 982]



                             *** MO contributions ***

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2
   1      Singlet-A            3.4453     359.87       1.5292              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     112 ->113              -0.69440  -1.00000   1.00000     |**********
 
   2      Singlet-A            4.5838     270.48       0.0027              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     110 ->113               0.37998   0.55538   0.30844     |***       
       2     111 ->113              -0.33568  -0.49063   0.24072     |**        
       3     111 ->116               0.10194   0.14899   0.02220     |          
       4     112 ->115              -0.44794  -0.65471   0.42864     |****      
 
   3      Singlet-A            4.7103     263.22       0.0008              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     107 ->114               0.10887   0.16203   0.02625     |          
       2     108 ->113               0.11375   0.16929   0.02866     |          
       3     109 ->114              -0.30770  -0.45795   0.20972     |**        
       4     112 ->114              -0.57619  -0.85754   0.73537     |*******   
 
   4      Singlet-A            4.8205     257.20       0.0534              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     109 ->115               0.12444   0.18124   0.03285     |          
       2     110 ->113              -0.40826  -0.59461   0.35356     |****      
       3     111 ->113              -0.42034  -0.61220   0.37479     |****      
       4     111 ->116               0.19107   0.27828   0.07744     |*         
       5     112 ->121               0.27580   0.40169   0.16135     |**        
 

 Set    of Excited States :         4
 Number of Excited States :         4

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2           Excitation spectrum
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1      Singlet-A            3.3872     366.04       1.5388              0.000             1  366.04  1.5388|**************************************************
   2      Singlet-A            4.5540     272.25       0.0021              0.000             2  272.25  0.0021|                                                  
   3      Singlet-A            4.6983     263.89       0.0005              0.000             3  263.89  0.0005|                                                  
   4      Singlet-A            4.7914     258.77       0.0630              0.000             4  258.77  0.0630|**                                                
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------



                            *** Radiative parameters of Si->S0 transition (in SI units) ***

 No.  State Energy,eV WaveLen,nm   S2      A21(=Kf)   B12w        B12f         s0          f12     (m12)**2        S21        tau        tau,ps
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1  S1      3.3872    366.04   0.000  0.7661E+09  0.1418E+23  0.2256E+22  0.2566E-04   1.539      0.1776E+58  0.1776E+58  0.1305E-08   1305.    
   2  S2      4.5540    272.25   0.000  0.1890E+07  0.1439E+20  0.2290E+19  0.3502E-07  0.2100E-02  0.3259E+55  0.3259E+55  0.5292E-06  0.5292E+06
   3  S3      4.6983    263.89   0.000  0.4789E+06  0.3321E+19  0.5285E+18  0.8338E-08  0.5000E-03  0.8007E+54  0.8007E+54  0.2088E-05  0.2088E+07
   4  S4      4.7914    258.77   0.000  0.6276E+08  0.4103E+21  0.6530E+20  0.1051E-05  0.6300E-01  0.1029E+57  0.1029E+57  0.1593E-07  0.1593E+05
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Notes:
 A21  - Einstein coefficient A of spontaneous emission. It is equal to emission rate constant Kf
 B12w - Einstein absorption coefficient B in angular frequencies
 B12f - Einstein absorption coefficient B in cyclic  frequencies
 s0   - Absorption cross section
 f12  - Oscillator strength, dimensionless
 (m12)**2  - Transition dipole moment squared
 S21  - Line strength
 tau  - State lifetime calculated as 1/Kf = 1/A21
 All quantities correspond to the Si --> S0 transitions in the Franck-Condon electric dipole appoximation
 All quantities are in SI units, conversion factors are taken from [Hillborn R.C., Am.J.Phys., 1982, 50, 982]



                             *** MO contributions ***

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2
   1      Singlet-A            3.3872     366.04       1.5388              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     112 ->113              -0.69504  -1.00000   1.00000     |**********
 
   2      Singlet-A            4.5540     272.25       0.0021              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     110 ->113               0.36816   0.53605   0.28735     |***       
       2     111 ->113              -0.36565  -0.53240   0.28345     |***       
       3     111 ->116              -0.10652  -0.15510   0.02406     |          
       4     112 ->115              -0.43715  -0.63651   0.40514     |****      
 
   3      Singlet-A            4.6983     263.89       0.0005              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     108 ->113              -0.10290  -0.15478   0.02396     |          
       2     109 ->114               0.30801   0.46330   0.21465     |**        
       3     112 ->114              -0.58011  -0.87258   0.76140     |********  
 
   4      Singlet-A            4.7914     258.77       0.0630              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     109 ->115              -0.11929  -0.17208   0.02961     |          
       2     110 ->113              -0.43498  -0.62746   0.39371     |****      
       3     111 ->113              -0.40832  -0.58900   0.34692     |***       
       4     111 ->116              -0.18371  -0.26500   0.07023     |*         
       5     112 ->121               0.27689   0.39941   0.15953     |**        
 

 Set    of Excited States :         5
 Number of Excited States :         4

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2           Excitation spectrum
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1      Singlet-A            3.3648     368.47       1.5469              0.000             1  368.47  1.5469|**************************************************
   2      Singlet-A            4.5427     272.93       0.0020              0.000             2  272.93  0.0020|                                                  
   3      Singlet-A            4.7088     263.30       0.0001              0.000             3  263.30  0.0001|                                                  
   4      Singlet-A            4.7695     259.95       0.0685              0.000             4  259.95  0.0685|**                                                
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------



                            *** Radiative parameters of Si->S0 transition (in SI units) ***

 No.  State Energy,eV WaveLen,nm   S2      A21(=Kf)   B12w        B12f         s0          f12     (m12)**2        S21        tau        tau,ps
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1  S1      3.3648    368.47   0.000  0.7600E+09  0.1434E+23  0.2283E+22  0.2580E-04   1.547      0.1774E+58  0.1774E+58  0.1316E-08   1316.    
   2  S2      4.5427    272.93   0.000  0.1791E+07  0.1374E+20  0.2186E+19  0.3335E-07  0.2000E-02  0.3097E+55  0.3097E+55  0.5584E-06  0.5584E+06
   3  S3      4.7088    263.30   0.000  0.9621E+05  0.6626E+18  0.1055E+18  0.1668E-08  0.1000E-03  0.1605E+54  0.1605E+54  0.1039E-04  0.1039E+08
   4  S4      4.7695    259.95   0.000  0.6762E+08  0.4481E+21  0.7132E+20  0.1142E-05  0.6850E-01  0.1114E+57  0.1114E+57  0.1479E-07  0.1479E+05
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Notes:
 A21  - Einstein coefficient A of spontaneous emission. It is equal to emission rate constant Kf
 B12w - Einstein absorption coefficient B in angular frequencies
 B12f - Einstein absorption coefficient B in cyclic  frequencies
 s0   - Absorption cross section
 f12  - Oscillator strength, dimensionless
 (m12)**2  - Transition dipole moment squared
 S21  - Line strength
 tau  - State lifetime calculated as 1/Kf = 1/A21
 All quantities correspond to the Si --> S0 transitions in the Franck-Condon electric dipole appoximation
 All quantities are in SI units, conversion factors are taken from [Hillborn R.C., Am.J.Phys., 1982, 50, 982]



                             *** MO contributions ***

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2
   1      Singlet-A            3.3648     368.47       1.5469              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     112 ->113              -0.69533  -1.00000   1.00000     |**********
 
   2      Singlet-A            4.5427     272.93       0.0020              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     110 ->113               0.36720   0.53371   0.28484     |***       
       2     111 ->113              -0.38302  -0.55670   0.30992     |***       
       3     111 ->116              -0.10430  -0.15159   0.02298     |          
       4     112 ->115              -0.40970  -0.59548   0.35459     |****      
       5     112 ->116               0.11444   0.16633   0.02767     |          
 
   3      Singlet-A            4.7088     263.30       0.0001              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     106 ->114              -0.11230  -0.16768   0.02812     |          
       2     109 ->114              -0.31015  -0.46310   0.21446     |**        
       3     112 ->114               0.58286   0.87030   0.75742     |********  
 
   4      Singlet-A            4.7695     259.95       0.0685              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     109 ->115              -0.11000  -0.15925   0.02536     |          
       2     110 ->113              -0.44699  -0.64712   0.41877     |****      
       3     111 ->113              -0.40253  -0.58276   0.33961     |***       
       4     111 ->116              -0.17179  -0.24871   0.06186     |*         
       5     112 ->122              -0.27142  -0.39295   0.15441     |**        
 

 Set    of Excited States :         6
 Number of Excited States :         4

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2           Excitation spectrum
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1      Singlet-A            3.3774     367.09       1.5441              0.000             1  367.09  1.5441|**************************************************
   2      Singlet-A            4.5482     272.60       0.0020              0.000             2  272.60  0.0020|                                                  
   3      Singlet-A            4.7234     262.49       0.0003              0.000             3  262.49  0.0003|                                                  
   4      Singlet-A            4.7831     259.21       0.0656              0.000             4  259.21  0.0656|**                                                
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------



                            *** Radiative parameters of Si->S0 transition (in SI units) ***

 No.  State Energy,eV WaveLen,nm   S2      A21(=Kf)   B12w        B12f         s0          f12     (m12)**2        S21        tau        tau,ps
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1  S1      3.3774    367.09   0.000  0.7643E+09  0.1427E+23  0.2270E+22  0.2575E-04   1.544      0.1777E+58  0.1777E+58  0.1308E-08   1308.    
   2  S2      4.5482    272.60   0.000  0.1795E+07  0.1372E+20  0.2184E+19  0.3335E-07  0.2000E-02  0.3100E+55  0.3100E+55  0.5570E-06  0.5570E+06
   3  S3      4.7234    262.49   0.000  0.2904E+06  0.1982E+19  0.3154E+18  0.5003E-08  0.3000E-03  0.4830E+54  0.4830E+54  0.3443E-05  0.3443E+07
   4  S4      4.7831    259.21   0.000  0.6512E+08  0.4279E+21  0.6811E+20  0.1094E-05  0.6560E-01  0.1069E+57  0.1069E+57  0.1536E-07  0.1536E+05
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Notes:
 A21  - Einstein coefficient A of spontaneous emission. It is equal to emission rate constant Kf
 B12w - Einstein absorption coefficient B in angular frequencies
 B12f - Einstein absorption coefficient B in cyclic  frequencies
 s0   - Absorption cross section
 f12  - Oscillator strength, dimensionless
 (m12)**2  - Transition dipole moment squared
 S21  - Line strength
 tau  - State lifetime calculated as 1/Kf = 1/A21
 All quantities correspond to the Si --> S0 transitions in the Franck-Condon electric dipole appoximation
 All quantities are in SI units, conversion factors are taken from [Hillborn R.C., Am.J.Phys., 1982, 50, 982]



                             *** MO contributions ***

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2
   1      Singlet-A            3.3774     367.09       1.5441              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     112 ->113              -0.69519  -1.00000   1.00000     |**********
 
   2      Singlet-A            4.5482     272.60       0.0020              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     110 ->113               0.36577   0.53258   0.28364     |***       
       2     111 ->113              -0.37414  -0.54477   0.29677     |***       
       3     111 ->116              -0.10746  -0.15647   0.02448     |          
       4     112 ->115              -0.43170  -0.62858   0.39511     |****      
 
   3      Singlet-A            4.7234     262.49       0.0003              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     106 ->114               0.10837   0.16066   0.02581     |          
       2     108 ->113               0.10462   0.15510   0.02406     |          
       3     109 ->114               0.30914   0.45831   0.21005     |**        
       4     112 ->114              -0.58028  -0.86028   0.74008     |*******   
 
   4      Singlet-A            4.7831     259.21       0.0656              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     109 ->115              -0.11725  -0.16916   0.02862     |          
       2     110 ->113              -0.44137  -0.63680   0.40551     |****      
       3     111 ->113              -0.40468  -0.58386   0.34089     |***       
       4     111 ->116              -0.18089  -0.26098   0.06811     |*         
       5     112 ->122              -0.27452  -0.39607   0.15687     |**        
 

 Set    of Excited States :         7
 Number of Excited States :         4

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2           Excitation spectrum
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1      Singlet-A            3.3973     364.95       1.5373              0.000             1  364.95  1.5373|**************************************************
   2      Singlet-A            4.5478     272.62       0.0018              0.000             2  272.62  0.0018|                                                  
   3      Singlet-A            4.7478     261.14       0.0002              0.000             3  261.14  0.0002|                                                  
   4      Singlet-A            4.7914     258.76       0.0651              0.000             4  258.76  0.0651|**                                                
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------



                            *** Radiative parameters of Si->S0 transition (in SI units) ***

 No.  State Energy,eV WaveLen,nm   S2      A21(=Kf)   B12w        B12f         s0          f12     (m12)**2        S21        tau        tau,ps
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1  S1      3.3973    364.95   0.000  0.7699E+09  0.1412E+23  0.2247E+22  0.2564E-04   1.537      0.1780E+58  0.1780E+58  0.1299E-08   1299.    
   2  S2      4.5478    272.62   0.000  0.1615E+07  0.1235E+20  0.1966E+19  0.3002E-07  0.1800E-02  0.2790E+55  0.2790E+55  0.6190E-06  0.6190E+06
   3  S3      4.7478    261.14   0.000  0.1956E+06  0.1314E+19  0.2092E+18  0.3335E-08  0.2000E-03  0.3236E+54  0.3236E+54  0.5112E-05  0.5112E+07
   4  S4      4.7914    258.76   0.000  0.6485E+08  0.4239E+21  0.6747E+20  0.1086E-05  0.6510E-01  0.1063E+57  0.1063E+57  0.1542E-07  0.1542E+05
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Notes:
 A21  - Einstein coefficient A of spontaneous emission. It is equal to emission rate constant Kf
 B12w - Einstein absorption coefficient B in angular frequencies
 B12f - Einstein absorption coefficient B in cyclic  frequencies
 s0   - Absorption cross section
 f12  - Oscillator strength, dimensionless
 (m12)**2  - Transition dipole moment squared
 S21  - Line strength
 tau  - State lifetime calculated as 1/Kf = 1/A21
 All quantities correspond to the Si --> S0 transitions in the Franck-Condon electric dipole appoximation
 All quantities are in SI units, conversion factors are taken from [Hillborn R.C., Am.J.Phys., 1982, 50, 982]



                             *** MO contributions ***

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2
   1      Singlet-A            3.3973     364.95       1.5373              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     112 ->113              -0.69509  -1.00000   1.00000     |**********
 
   2      Singlet-A            4.5478     272.62       0.0018              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     110 ->113               0.35559   0.51755   0.26786     |***       
       2     111 ->113              -0.37685  -0.54850   0.30085     |***       
       3     111 ->116              -0.10760  -0.15661   0.02453     |          
       4     112 ->115              -0.43819  -0.63778   0.40676     |****      
 
   3      Singlet-A            4.7478     261.14       0.0002              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     106 ->114               0.10662   0.15832   0.02506     |          
       2     108 ->113               0.10216   0.15169   0.02301     |          
       3     109 ->114               0.31093   0.46169   0.21316     |**        
       4     112 ->114              -0.57885  -0.85952   0.73877     |*******   
 
   4      Singlet-A            4.7914     258.76       0.0651              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     109 ->115              -0.11801  -0.17065   0.02912     |          
       2     110 ->113              -0.44683  -0.64615   0.41750     |****      
       3     111 ->113              -0.39626  -0.57302   0.32835     |***       
       4     111 ->116              -0.17972  -0.25989   0.06754     |*         
       5     112 ->122              -0.27443  -0.39684   0.15748     |**        
 

 Set    of Excited States :         8
 Number of Excited States :         4

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2           Excitation spectrum
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1      Singlet-A            3.4072     363.89       1.5357              0.000             1  363.89  1.5357|**************************************************
   2      Singlet-A            4.5505     272.46       0.0017              0.000             2  272.46  0.0017|                                                  
   3      Singlet-A            4.7510     260.96       0.0002              0.000             3  260.96  0.0002|                                                  
   4      Singlet-A            4.7967     258.48       0.0648              0.000             4  258.48  0.0648|**                                                
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------



                            *** Radiative parameters of Si->S0 transition (in SI units) ***

 No.  State Energy,eV WaveLen,nm   S2      A21(=Kf)   B12w        B12f         s0          f12     (m12)**2        S21        tau        tau,ps
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1  S1      3.4072    363.89   0.000  0.7736E+09  0.1406E+23  0.2238E+22  0.2561E-04   1.536      0.1783E+58  0.1783E+58  0.1293E-08   1293.    
   2  S2      4.5505    272.46   0.000  0.1527E+07  0.1166E+20  0.1855E+19  0.2835E-07  0.1700E-02  0.2637E+55  0.2637E+55  0.6547E-06  0.6547E+06
   3  S3      4.7510    260.96   0.000  0.1959E+06  0.1314E+19  0.2091E+18  0.3335E-08  0.2000E-03  0.3239E+54  0.3239E+54  0.5105E-05  0.5105E+07
   4  S4      4.7967    258.48   0.000  0.6469E+08  0.4215E+21  0.6709E+20  0.1081E-05  0.6480E-01  0.1059E+57  0.1059E+57  0.1546E-07  0.1546E+05
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Notes:
 A21  - Einstein coefficient A of spontaneous emission. It is equal to emission rate constant Kf
 B12w - Einstein absorption coefficient B in angular frequencies
 B12f - Einstein absorption coefficient B in cyclic  frequencies
 s0   - Absorption cross section
 f12  - Oscillator strength, dimensionless
 (m12)**2  - Transition dipole moment squared
 S21  - Line strength
 tau  - State lifetime calculated as 1/Kf = 1/A21
 All quantities correspond to the Si --> S0 transitions in the Franck-Condon electric dipole appoximation
 All quantities are in SI units, conversion factors are taken from [Hillborn R.C., Am.J.Phys., 1982, 50, 982]



                             *** MO contributions ***

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2
   1      Singlet-A            3.4072     363.89       1.5357              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     112 ->113              -0.69497  -1.00000   1.00000     |**********
 
   2      Singlet-A            4.5505     272.46       0.0017              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     110 ->113               0.35303   0.51419   0.26440     |***       
       2     111 ->113              -0.37679  -0.54880   0.30118     |***       
       3     111 ->116              -0.10811  -0.15746   0.02479     |          
       4     112 ->115              -0.43942  -0.64002   0.40963     |****      
 
   3      Singlet-A            4.7510     260.96       0.0002              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     106 ->114               0.10931   0.16242   0.02638     |          
       2     108 ->113               0.10094   0.14998   0.02249     |          
       3     109 ->114               0.31148   0.46282   0.21420     |**        
       4     112 ->114              -0.57774  -0.85844   0.73693     |*******   
 
   4      Singlet-A            4.7967     258.48       0.0648              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     109 ->115              -0.11863  -0.17143   0.02939     |          
       2     110 ->113              -0.44761  -0.64682   0.41837     |****      
       3     111 ->113              -0.39386  -0.56915   0.32393     |***       
       4     111 ->116              -0.17993  -0.26001   0.06760     |*         
       5     112 ->122              -0.27742  -0.40089   0.16071     |**        
 

 Set    of Excited States :         9
 Number of Excited States :         4

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2           Excitation spectrum
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1      Singlet-A            3.4127     363.30       1.5354              0.000             1  363.30  1.5354|**************************************************
   2      Singlet-A            4.5523     272.36       0.0017              0.000             2  272.36  0.0017|                                                  
   3      Singlet-A            4.7472     261.18       0.0002              0.000             3  261.18  0.0002|                                                  
   4      Singlet-A            4.7998     258.31       0.0645              0.000             4  258.31  0.0645|**                                                
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------



                            *** Radiative parameters of Si->S0 transition (in SI units) ***

 No.  State Energy,eV WaveLen,nm   S2      A21(=Kf)   B12w        B12f         s0          f12     (m12)**2        S21        tau        tau,ps
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1  S1      3.4127    363.30   0.000  0.7759E+09  0.1404E+23  0.2234E+22  0.2560E-04   1.535      0.1786E+58  0.1786E+58  0.1289E-08   1289.    
   2  S2      4.5523    272.36   0.000  0.1529E+07  0.1165E+20  0.1855E+19  0.2835E-07  0.1700E-02  0.2638E+55  0.2638E+55  0.6542E-06  0.6542E+06
   3  S3      4.7472    261.18   0.000  0.1956E+06  0.1315E+19  0.2092E+18  0.3335E-08  0.2000E-03  0.3236E+54  0.3236E+54  0.5113E-05  0.5113E+07
   4  S4      4.7998    258.31   0.000  0.6448E+08  0.4193E+21  0.6673E+20  0.1076E-05  0.6450E-01  0.1055E+57  0.1055E+57  0.1551E-07  0.1551E+05
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Notes:
 A21  - Einstein coefficient A of spontaneous emission. It is equal to emission rate constant Kf
 B12w - Einstein absorption coefficient B in angular frequencies
 B12f - Einstein absorption coefficient B in cyclic  frequencies
 s0   - Absorption cross section
 f12  - Oscillator strength, dimensionless
 (m12)**2  - Transition dipole moment squared
 S21  - Line strength
 tau  - State lifetime calculated as 1/Kf = 1/A21
 All quantities correspond to the Si --> S0 transitions in the Franck-Condon electric dipole appoximation
 All quantities are in SI units, conversion factors are taken from [Hillborn R.C., Am.J.Phys., 1982, 50, 982]



                             *** MO contributions ***

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2
   1      Singlet-A            3.4127     363.30       1.5354              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     112 ->113              -0.69487  -1.00000   1.00000     |**********
 
   2      Singlet-A            4.5523     272.36       0.0017              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     110 ->113               0.35210   0.51237   0.26253     |***       
       2     111 ->113              -0.37617  -0.54740   0.29965     |***       
       3     111 ->116              -0.10847  -0.15784   0.02491     |          
       4     112 ->115              -0.44158  -0.64258   0.41291     |****      
 
   3      Singlet-A            4.7472     261.18       0.0002              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     106 ->114               0.11609   0.17376   0.03019     |          
       2     109 ->114               0.31241   0.46760   0.21865     |**        
       3     112 ->114              -0.57905  -0.86669   0.75116     |********  
 
   4      Singlet-A            4.7998     258.31       0.0645              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     109 ->115              -0.11846  -0.17106   0.02926     |          
       2     110 ->113              -0.44754  -0.64628   0.41767     |****      
       3     111 ->113              -0.39366  -0.56847   0.32316     |***       
       4     111 ->116              -0.18060  -0.26080   0.06802     |*         
       5     112 ->122              -0.27863  -0.40236   0.16189     |**        
 

 Set    of Excited States :        10
 Number of Excited States :         4

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2           Excitation spectrum
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1      Singlet-A            3.4094     363.66       1.5374              0.000             1  363.66  1.5374|**************************************************
   2      Singlet-A            4.5524     272.35       0.0018              0.000             2  272.35  0.0018|                                                  
   3      Singlet-A            4.7354     261.82       0.0002              0.000             3  261.82  0.0002|                                                  
   4      Singlet-A            4.7979     258.41       0.0645              0.000             4  258.41  0.0645|**                                                
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------



                            *** Radiative parameters of Si->S0 transition (in SI units) ***

 No.  State Energy,eV WaveLen,nm   S2      A21(=Kf)   B12w        B12f         s0          f12     (m12)**2        S21        tau        tau,ps
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1  S1      3.4094    363.66   0.000  0.7754E+09  0.1407E+23  0.2239E+22  0.2564E-04   1.537      0.1786E+58  0.1786E+58  0.1290E-08   1290.    
   2  S2      4.5524    272.35   0.000  0.1619E+07  0.1234E+20  0.1964E+19  0.3002E-07  0.1800E-02  0.2793E+55  0.2793E+55  0.6178E-06  0.6178E+06
   3  S3      4.7354    261.82   0.000  0.1946E+06  0.1318E+19  0.2097E+18  0.3335E-08  0.2000E-03  0.3228E+54  0.3228E+54  0.5139E-05  0.5139E+07
   4  S4      4.7979    258.41   0.000  0.6443E+08  0.4195E+21  0.6676E+20  0.1076E-05  0.6450E-01  0.1055E+57  0.1055E+57  0.1552E-07  0.1552E+05
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Notes:
 A21  - Einstein coefficient A of spontaneous emission. It is equal to emission rate constant Kf
 B12w - Einstein absorption coefficient B in angular frequencies
 B12f - Einstein absorption coefficient B in cyclic  frequencies
 s0   - Absorption cross section
 f12  - Oscillator strength, dimensionless
 (m12)**2  - Transition dipole moment squared
 S21  - Line strength
 tau  - State lifetime calculated as 1/Kf = 1/A21
 All quantities correspond to the Si --> S0 transitions in the Franck-Condon electric dipole appoximation
 All quantities are in SI units, conversion factors are taken from [Hillborn R.C., Am.J.Phys., 1982, 50, 982]



                             *** MO contributions ***

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2
   1      Singlet-A            3.4094     363.66       1.5374              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     112 ->113              -0.69483  -1.00000   1.00000     |**********
 
   2      Singlet-A            4.5524     272.35       0.0018              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     110 ->113               0.35515   0.51696   0.26724     |***       
       2     111 ->113              -0.37473  -0.54546   0.29752     |***       
       3     111 ->116              -0.10842  -0.15782   0.02491     |          
       4     112 ->115              -0.44007  -0.64057   0.41033     |****      
 
   3      Singlet-A            4.7354     261.82       0.0002              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     106 ->114               0.10321   0.15481   0.02397     |          
       2     109 ->114               0.31222   0.46831   0.21931     |**        
       3     112 ->114              -0.57996  -0.86990   0.75672     |********  
 
   4      Singlet-A            4.7979     258.41       0.0645              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     109 ->115              -0.11814  -0.17079   0.02917     |          
       2     110 ->113              -0.44574  -0.64438   0.41523     |****      
       3     111 ->113              -0.39588  -0.57230   0.32753     |***       
       4     111 ->116              -0.18112  -0.26183   0.06856     |*         
       5     112 ->122               0.27628   0.39940   0.15952     |**        
 

 Set    of Excited States :        11
 Number of Excited States :         4

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2           Excitation spectrum
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1      Singlet-A            3.4030     364.34       1.5380              0.000             1  364.34  1.5380|**************************************************
   2      Singlet-A            4.5507     272.45       0.0018              0.000             2  272.45  0.0018|                                                  
   3      Singlet-A            4.7287     262.20       0.0002              0.000             3  262.20  0.0002|                                                  
   4      Singlet-A            4.7965     258.49       0.0646              0.000             4  258.49  0.0646|**                                                
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------



                            *** Radiative parameters of Si->S0 transition (in SI units) ***

 No.  State Energy,eV WaveLen,nm   S2      A21(=Kf)   B12w        B12f         s0          f12     (m12)**2        S21        tau        tau,ps
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1  S1      3.4030    364.34   0.000  0.7728E+09  0.1410E+23  0.2244E+22  0.2565E-04   1.538      0.1784E+58  0.1784E+58  0.1294E-08   1294.    
   2  S2      4.5507    272.45   0.000  0.1617E+07  0.1234E+20  0.1964E+19  0.3002E-07  0.1800E-02  0.2792E+55  0.2792E+55  0.6182E-06  0.6182E+06
   3  S3      4.7287    262.20   0.000  0.1941E+06  0.1320E+19  0.2100E+18  0.3335E-08  0.2000E-03  0.3223E+54  0.3223E+54  0.5153E-05  0.5153E+07
   4  S4      4.7965    258.49   0.000  0.6449E+08  0.4202E+21  0.6688E+20  0.1077E-05  0.6460E-01  0.1056E+57  0.1056E+57  0.1551E-07  0.1551E+05
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Notes:
 A21  - Einstein coefficient A of spontaneous emission. It is equal to emission rate constant Kf
 B12w - Einstein absorption coefficient B in angular frequencies
 B12f - Einstein absorption coefficient B in cyclic  frequencies
 s0   - Absorption cross section
 f12  - Oscillator strength, dimensionless
 (m12)**2  - Transition dipole moment squared
 S21  - Line strength
 tau  - State lifetime calculated as 1/Kf = 1/A21
 All quantities correspond to the Si --> S0 transitions in the Franck-Condon electric dipole appoximation
 All quantities are in SI units, conversion factors are taken from [Hillborn R.C., Am.J.Phys., 1982, 50, 982]



                             *** MO contributions ***

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2
   1      Singlet-A            3.4030     364.34       1.5380              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     112 ->113              -0.69488  -1.00000   1.00000     |**********
 
   2      Singlet-A            4.5507     272.45       0.0018              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     110 ->113               0.35588   0.51773   0.26804     |***       
       2     111 ->113              -0.37502  -0.54557   0.29765     |***       
       3     111 ->116              -0.10835  -0.15762   0.02485     |          
       4     112 ->115              -0.43986  -0.63990   0.40947     |****      
 
   3      Singlet-A            4.7287     262.20       0.0002              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     106 ->114               0.10603   0.15880   0.02522     |          
       2     109 ->114               0.31158   0.46664   0.21776     |**        
       3     112 ->114              -0.58095  -0.87007   0.75703     |********  
 
   4      Singlet-A            4.7965     258.49       0.0646              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     109 ->115              -0.11814  -0.17057   0.02909     |          
       2     110 ->113              -0.44555  -0.64328   0.41381     |****      
       3     111 ->113              -0.39692  -0.57307   0.32841     |***       
       4     111 ->116              -0.18115  -0.26154   0.06840     |*         
       5     112 ->122              -0.27729  -0.40035   0.16028     |**        
 

 Set    of Excited States :        12
 Number of Excited States :         4

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2           Excitation spectrum
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1      Singlet-A            3.4007     364.59       1.5390              0.000             1  364.59  1.5390|**************************************************
   2      Singlet-A            4.5510     272.43       0.0018              0.000             2  272.43  0.0018|                                                  
   3      Singlet-A            4.7251     262.40       0.0003              0.000             3  262.40  0.0003|                                                  
   4      Singlet-A            4.7957     258.53       0.0646              0.000             4  258.53  0.0646|**                                                
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------



                            *** Radiative parameters of Si->S0 transition (in SI units) ***

 No.  State Energy,eV WaveLen,nm   S2      A21(=Kf)   B12w        B12f         s0          f12     (m12)**2        S21        tau        tau,ps
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1  S1      3.4007    364.59   0.000  0.7723E+09  0.1412E+23  0.2247E+22  0.2566E-04   1.539      0.1784E+58  0.1784E+58  0.1295E-08   1295.    
   2  S2      4.5510    272.43   0.000  0.1618E+07  0.1234E+20  0.1964E+19  0.3002E-07  0.1800E-02  0.2792E+55  0.2792E+55  0.6182E-06  0.6182E+06
   3  S3      4.7251    262.40   0.000  0.2906E+06  0.1981E+19  0.3153E+18  0.5003E-08  0.3000E-03  0.4831E+54  0.4831E+54  0.3441E-05  0.3441E+07
   4  S4      4.7957    258.53   0.000  0.6447E+08  0.4203E+21  0.6689E+20  0.1077E-05  0.6460E-01  0.1056E+57  0.1056E+57  0.1551E-07  0.1551E+05
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Notes:
 A21  - Einstein coefficient A of spontaneous emission. It is equal to emission rate constant Kf
 B12w - Einstein absorption coefficient B in angular frequencies
 B12f - Einstein absorption coefficient B in cyclic  frequencies
 s0   - Absorption cross section
 f12  - Oscillator strength, dimensionless
 (m12)**2  - Transition dipole moment squared
 S21  - Line strength
 tau  - State lifetime calculated as 1/Kf = 1/A21
 All quantities correspond to the Si --> S0 transitions in the Franck-Condon electric dipole appoximation
 All quantities are in SI units, conversion factors are taken from [Hillborn R.C., Am.J.Phys., 1982, 50, 982]



                             *** MO contributions ***

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2
   1      Singlet-A            3.4007     364.59       1.5390              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     112 ->113              -0.69489  -1.00000   1.00000     |**********
 
   2      Singlet-A            4.5510     272.43       0.0018              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     110 ->113               0.35746   0.51994   0.27034     |***       
       2     111 ->113              -0.37465  -0.54494   0.29696     |***       
       3     111 ->116              -0.10838  -0.15764   0.02485     |          
       4     112 ->115              -0.43906  -0.63863   0.40785     |****      
 
   3      Singlet-A            4.7251     262.40       0.0003              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     109 ->114               0.31125   0.47192   0.22271     |**        
       2     112 ->114              -0.58148  -0.88164   0.77729     |********  
 
   4      Singlet-A            4.7957     258.53       0.0646              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     109 ->115              -0.11802  -0.17039   0.02903     |          
       2     110 ->113              -0.44465  -0.64198   0.41213     |****      
       3     111 ->113              -0.39825  -0.57498   0.33061     |***       
       4     111 ->116              -0.18133  -0.26180   0.06854     |*         
       5     112 ->122              -0.27678  -0.39961   0.15969     |**        
 

 Set    of Excited States :        13
 Number of Excited States :         4

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2           Excitation spectrum
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1      Singlet-A            3.4006     364.59       1.5391              0.000             1  364.59  1.5391|**************************************************
   2      Singlet-A            4.5509     272.44       0.0018              0.000             2  272.44  0.0018|                                                  
   3      Singlet-A            4.7253     262.38       0.0003              0.000             3  262.38  0.0003|                                                  
   4      Singlet-A            4.7957     258.53       0.0646              0.000             4  258.53  0.0646|**                                                
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------



                            *** Radiative parameters of Si->S0 transition (in SI units) ***

 No.  State Energy,eV WaveLen,nm   S2      A21(=Kf)   B12w        B12f         s0          f12     (m12)**2        S21        tau        tau,ps
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1  S1      3.4006    364.59   0.000  0.7723E+09  0.1412E+23  0.2248E+22  0.2567E-04   1.539      0.1784E+58  0.1784E+58  0.1295E-08   1295.    
   2  S2      4.5509    272.44   0.000  0.1618E+07  0.1234E+20  0.1964E+19  0.3002E-07  0.1800E-02  0.2792E+55  0.2792E+55  0.6182E-06  0.6182E+06
   3  S3      4.7253    262.38   0.000  0.2907E+06  0.1981E+19  0.3153E+18  0.5003E-08  0.3000E-03  0.4832E+54  0.4832E+54  0.3440E-05  0.3440E+07
   4  S4      4.7957    258.53   0.000  0.6447E+08  0.4203E+21  0.6689E+20  0.1077E-05  0.6460E-01  0.1056E+57  0.1056E+57  0.1551E-07  0.1551E+05
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Notes:
 A21  - Einstein coefficient A of spontaneous emission. It is equal to emission rate constant Kf
 B12w - Einstein absorption coefficient B in angular frequencies
 B12f - Einstein absorption coefficient B in cyclic  frequencies
 s0   - Absorption cross section
 f12  - Oscillator strength, dimensionless
 (m12)**2  - Transition dipole moment squared
 S21  - Line strength
 tau  - State lifetime calculated as 1/Kf = 1/A21
 All quantities correspond to the Si --> S0 transitions in the Franck-Condon electric dipole appoximation
 All quantities are in SI units, conversion factors are taken from [Hillborn R.C., Am.J.Phys., 1982, 50, 982]



                             *** MO contributions ***

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2
   1      Singlet-A            3.4006     364.59       1.5391              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     112 ->113              -0.69488  -1.00000   1.00000     |**********
 
   2      Singlet-A            4.5509     272.44       0.0018              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     110 ->113               0.35746   0.51993   0.27033     |***       
       2     111 ->113              -0.37451  -0.54473   0.29674     |***       
       3     111 ->116              -0.10834  -0.15758   0.02483     |          
       4     112 ->115              -0.43920  -0.63883   0.40810     |****      
 
   3      Singlet-A            4.7253     262.38       0.0003              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     108 ->113               0.10014   0.15012   0.02254     |          
       2     109 ->114               0.31121   0.46654   0.21766     |**        
       3     112 ->114              -0.58145  -0.87167   0.75980     |********  
 
   4      Singlet-A            4.7957     258.53       0.0646              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     109 ->115              -0.11804  -0.17042   0.02904     |          
       2     110 ->113              -0.44455  -0.64181   0.41192     |****      
       3     111 ->113              -0.39833  -0.57508   0.33072     |***       
       4     111 ->116              -0.18134  -0.26181   0.06854     |*         
       5     112 ->122              -0.27686  -0.39971   0.15977     |**        
 

 Set    of Excited States :        14
 Number of Excited States :         4

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2           Excitation spectrum
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1      Singlet-A            3.4016     364.49       1.5392              0.000             1  364.49  1.5392|**************************************************
   2      Singlet-A            4.5513     272.41       0.0019              0.000             2  272.41  0.0019|                                                  
   3      Singlet-A            4.7270     262.29       0.0003              0.000             3  262.29  0.0003|                                                  
   4      Singlet-A            4.7959     258.52       0.0645              0.000             4  258.52  0.0645|**                                                
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------



                            *** Radiative parameters of Si->S0 transition (in SI units) ***

 No.  State Energy,eV WaveLen,nm   S2      A21(=Kf)   B12w        B12f         s0          f12     (m12)**2        S21        tau        tau,ps
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
   1  S1      3.4016    364.49   0.000  0.7728E+09  0.1412E+23  0.2247E+22  0.2567E-04   1.539      0.1784E+58  0.1784E+58  0.1294E-08   1294.    
   2  S2      4.5513    272.41   0.000  0.1708E+07  0.1303E+20  0.2073E+19  0.3168E-07  0.1900E-02  0.2947E+55  0.2947E+55  0.5856E-06  0.5856E+06
   3  S3      4.7270    262.29   0.000  0.2909E+06  0.1980E+19  0.3152E+18  0.5003E-08  0.3000E-03  0.4833E+54  0.4833E+54  0.3438E-05  0.3438E+07
   4  S4      4.7959    258.52   0.000  0.6437E+08  0.4196E+21  0.6679E+20  0.1076E-05  0.6450E-01  0.1054E+57  0.1054E+57  0.1553E-07  0.1553E+05
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Notes:
 A21  - Einstein coefficient A of spontaneous emission. It is equal to emission rate constant Kf
 B12w - Einstein absorption coefficient B in angular frequencies
 B12f - Einstein absorption coefficient B in cyclic  frequencies
 s0   - Absorption cross section
 f12  - Oscillator strength, dimensionless
 (m12)**2  - Transition dipole moment squared
 S21  - Line strength
 tau  - State lifetime calculated as 1/Kf = 1/A21
 All quantities correspond to the Si --> S0 transitions in the Franck-Condon electric dipole appoximation
 All quantities are in SI units, conversion factors are taken from [Hillborn R.C., Am.J.Phys., 1982, 50, 982]



                             *** MO contributions ***

 No.            Symmetry    Energy,eV WaveLen,nm  OscStrength                 S2
   1      Singlet-A            3.4016     364.49       1.5392              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     112 ->113              -0.69488  -1.00000   1.00000     |**********
 
   2      Singlet-A            4.5513     272.41       0.0019              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     110 ->113               0.35774   0.52028   0.27069     |***       
       2     111 ->113              -0.37421  -0.54423   0.29619     |***       
       3     111 ->116              -0.10832  -0.15754   0.02482     |          
       4     112 ->115              -0.43936  -0.63898   0.40830     |****      
 
   3      Singlet-A            4.7270     262.29       0.0003              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     108 ->113               0.10067   0.15091   0.02277     |          
       2     109 ->114               0.31126   0.46658   0.21770     |**        
       3     112 ->114              -0.58139  -0.87151   0.75953     |********  
 
   4      Singlet-A            4.7959     258.52       0.0645              0.000
       m             MOs              C         Cnorm    C2norm      C2norm
       1     109 ->115              -0.11802  -0.17041   0.02904     |          
       2     110 ->113              -0.44422  -0.64140   0.41140     |****      
       3     111 ->113              -0.39859  -0.57552   0.33122     |***       
       4     111 ->116              -0.18144  -0.26198   0.06863     |*         
       5     112 ->122              -0.27678  -0.39964   0.15971     |**        
 


 Excitation energies from all data sets (columns - excitations, rows - datasets):
                 1           2           3           4
 d.s.   1      4.3047      4.8959      5.1090      5.1948
 d.s.   2      3.8426      4.7666      4.8908      4.9598
 d.s.   3      3.4453      4.5838      4.7103      4.8205
 d.s.   4      3.3872      4.5540      4.6983      4.7914
 d.s.   5      3.3648      4.5427      4.7088      4.7695
 d.s.   6      3.3774      4.5482      4.7234      4.7831
 d.s.   7      3.3973      4.5478      4.7478      4.7914
 d.s.   8      3.4072      4.5505      4.7510      4.7967
 d.s.   9      3.4127      4.5523      4.7472      4.7998
 d.s.  10      3.4094      4.5524      4.7354      4.7979
 d.s.  11      3.4030      4.5507      4.7287      4.7965
 d.s.  12      3.4007      4.5510      4.7251      4.7957
 d.s.  13      3.4006      4.5509      4.7253      4.7957
 d.s.  14      3.4016      4.5513      4.7270      4.7959


 Wavenumbers from all data sets (columns - excitations, rows - datasets):
                 1           2           3           4
 d.s.   1      288.02      253.24      242.68      238.67
 d.s.   2      322.66      260.11      253.50      249.98
 d.s.   3      359.87      270.48      263.22      257.20
 d.s.   4      366.04      272.25      263.89      258.77
 d.s.   5      368.47      272.93      263.30      259.95
 d.s.   6      367.09      272.60      262.49      259.21
 d.s.   7      364.95      272.62      261.14      258.76
 d.s.   8      363.89      272.46      260.96      258.48
 d.s.   9      363.30      272.36      261.18      258.31
 d.s.  10      363.66      272.35      261.82      258.41
 d.s.  11      364.34      272.45      262.20      258.49
 d.s.  12      364.59      272.43      262.40      258.53
 d.s.  13      364.59      272.44      262.38      258.53
 d.s.  14      364.49      272.41      262.29      258.52


 Oscilllator strengths from all data sets (columns - excitations, rows - datasets):
                 1           2           3           4
 d.s.   1      1.4208      0.0173      0.0091      0.0008
 d.s.   2      1.4795      0.0105      0.0012      0.0212
 d.s.   3      1.5292      0.0027      0.0008      0.0534
 d.s.   4      1.5388      0.0021      0.0005      0.0630
 d.s.   5      1.5469      0.0020      0.0001      0.0685
 d.s.   6      1.5441      0.0020      0.0003      0.0656
 d.s.   7      1.5373      0.0018      0.0002      0.0651
 d.s.   8      1.5357      0.0017      0.0002      0.0648
 d.s.   9      1.5354      0.0017      0.0002      0.0645
 d.s.  10      1.5374      0.0018      0.0002      0.0645
 d.s.  11      1.5380      0.0018      0.0002      0.0646
 d.s.  12      1.5390      0.0018      0.0003      0.0646
 d.s.  13      1.5391      0.0018      0.0003      0.0646
 d.s.  14      1.5392      0.0019      0.0003      0.0645


 Radiative lifetimes in ps from all data sets (columns - excitations, rows - datasets):
                 1           2           3           4
 d.s.   1       875.3     55575.0     97023.5   1067487.2
 d.s.   2      1054.9     96601.4    802877.5     44190.2
 d.s.   3      1269.6    406233.0   1298384.2     18572.3
 d.s.   4      1305.3    529157.5   2088040.1     15934.0
 d.s.   5      1315.9    558383.0  10393692.0     14789.5
 d.s.   6      1308.4    557033.4   3443179.2     15355.6
 d.s.   7      1298.9    619034.9   5111819.4     15420.0
 d.s.   8      1292.7    654671.1   5104935.7     15457.2
 d.s.   9      1288.8    654153.5   5113111.7     15509.0
 d.s.  10      1289.6    617784.5   5138625.8     15521.3
 d.s.  11      1293.9    618246.1   5153197.8     15506.3
 d.s.  12      1294.8    618164.6   3440702.1     15511.5
 d.s.  13      1294.8    618191.8   3440410.8     15511.5
 d.s.  14      1294.0    585552.5   3437936.7     15534.3

 WARNING! Further analysis will be performed for ES set:   14


 .DAT file is found in the command string.
 Starting the charge redistribution calculations...

 File with MO coefficient         :TI2MEG6-6D7F-60SMO.LOG
 File with overlap integrals      :TI2MEG6-6D7F-60SMO.LOG
 File with charge and multiplicity:str9-cam-root1.log


 Number of atoms     :    36
 System charge       :     0
 Multiplicity        :     1
 Nbasis, Nprim, Ncart:   573   982   573
 NoccA,  NoccB, Nelns:   112   112   224
 iUHF (0-RHF, 1-UHF) :     0
