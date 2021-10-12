hold on
axis([-20 20 0 35]);

%==========================================
a=1;
%pentru a=1 se afiseaza poligonul de control
%pentru a=0 nu se afiseaza poligonul de control
simoy=[-1;1];
%simetric fata de axa oy
%==========================================

%==============dreapta=====================
d1=[0 6 0 0.5;26 18 18 9];
cbg3(d1,a);
d2=[7 11 11 8;18 16 13 11];
cbg3(d2,a);
d3=[7 1 1 4;18 18 7 7];
cbg3(d3,a);
d4=[4 7 7 5;7 8 10 11];
cbg3(d4,a);
d5=[8 9 3 3;11 14 14 11];
cbg3(d5,a);
d6=[3 3 5 5 ;11 9 9 11];
cbg3(d6,a);
d7=[-3 -6 -3;12 11.5 11];
cbg2(d7,a);
d8=[0.5  0 3  ;9 7 6];
cbg2(d8,a);
d9=[3 1 0 ;6 6 2];
cbg2(d9,a);
%==============dreapta=====================

%==============stanga======================
s1=simoy.*d1;
cbg3(s1,a);
s2=simoy.*d2;
cbg3(s2,a);
s3=simoy.*d3;
cbg3(s3,a);
s4=simoy.*d4;
cbg3(s4,a);
s5=simoy.*d5;
cbg3(s5,a);
s6=simoy.*d6;
cbg3(s6,a);
s7=simoy.*d7;
cbg2(s7,a);
s8=simoy.*d8;
cbg2(s8,a);
s9=simoy.*d9;
cbg2(s9,a);
%==============stanga======================

%==============mijloc======================
m1=[-3 3;11 11];
cbg1(m1,a);
m2=[-3 3;12 12];
cbg1(m2,a);
%==============mijloc======================




