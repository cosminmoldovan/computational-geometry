hold on
axis([-13 13 0 26])

%==========================================
a=0;
%pentru a=1 se afiseaza poligonul de control
%pentru a=0 nu se afiseaza poligonul de control
pt=0.1;
%pas de trecere intre 0 si 1 pentru for
simoy=[-1;1];
%simetric fata de axa oy
%==========================================

%==============dreapta=====================
d1=[1 1 11 11 8 3 8;18 20 20 15 15 10 5];
d2=[3 3 7 7 3 3 8;16 16 17 12 12 8 5];
d3=[3 0 2;16 13 11];
d4=[2 0 0;11 9 5];

for t=0:pt:1
casteljau6(t,d1,a);
casteljau6(t,d2,a);    
casteljau2(t,d3,a);
casteljau2(t,d4,a);
end
%==============dreapta=====================

%==============stanga======================
s1=simoy.*d1;
s2=simoy.*d2;
s3=simoy.*d3;
s4=simoy.*d4;

for t=0:pt:1
casteljau6(t,s1,a);
casteljau6(t,s2,a);    
casteljau2(t,s3,a);
casteljau2(t,s4,a);
end
%==============stanga======================

%==============mijloc======================
m1=[1 1 -1 -1;18 15 15 18];

for t=0:pt:1
casteljau3(t,m1,a);
end
%==============mijloc======================
