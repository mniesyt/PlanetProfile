function [pinp] = PREM_PRESSO(dep)
%convert depth (km) in P (GPa) using PREM pressure profile
%fid=fopen('prem_pressure_profile', 'r' )
%mx=fscanf(fid,'%7i',1)

a=[0 0
2.999 0.0299
3.001 0.0303
14.999 0.3364 
15.001 0.370
24.399 0.6040
24.401 0.6043
40 1.1239
60 1.7891
79.999 2.4539
80.001 2.4546
115 3.6183
150 4.7824
185 5.9466
219.001 7.1108
220.001 7.1115
265 8.6497
310 10.2027
355 11.7702
399.999 13.3520
400.001 13.3527
450 15.2251
500 17.1311
550 19.0703
599.999 21.0425
600.001 21.0426
635 22.4364
669.999 23.8334
670.001 23.8342
721 26.0783
770.999 28.2927
771.001 28.2928
871 32.7623
971 37.2852
1071 41.8606
1171 46.4882
1271 51.1676
1371 55.8991
1471 60.6830
1571 65.5202
1671 70.4119
1771 75.3598
1871 80.3660
1971 85.4332
2071 90.5646
2171 95.7641
2271 101.0363
2371 106.3864
2471 111.8207
2571 117.3465
2671 122.9719
2740.999 126.9741
2741.001 126.9742
2771 128.7067
2871 134.5619
2890.999 135.7509
2891.001 135.7510
2971.000 144.1941
3071.000 154.6982 
3171.000 165.1209];

deps=a(:,1);psol=a(:,2);

pinp=interp1(deps,psol,dep);