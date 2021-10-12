function casteljau6(t,b,a)
y=0:0.01:1;
B0 = (1-y).^6;
B1 = 6.*(1-y).^5.*y;
B2 = 15.*(1-y).^4.*y.^2;
B3 = 20.*(1-y).^3.*y.^3;
B4 = 15.*(1-y).^2.*y.^4;
B5 = 6.*(1-y).*y.^5;
B6 = y.^6;
B=[B0;B1;B2;B3;B4;B5;B6];
%pol bernstein in camp de vect
f=b*B; %curba bezier
%repr

b1=zeros(2,6); b2=zeros(2,5);
b3=zeros(2,4);b4=zeros(2,3);
b5=zeros(2,2);b6=zeros(2,1);

for i=1:6
b1(:,i)=b(:,i)*(1-t)+b(:,i+1)*t;
end
b1;
for i=1:5
b2(:,i)=b1(:,i)*(1-t)+b1(:,i+1)*t;
end
b2;
for i=1:4
b3(:,i)=b2(:,i)*(1-t)+b2(:,i+1)*t;
end
b3;
for i=1:3
b4(:,i)=b3(:,i)*(1-t)+b3(:,i+1)*t;
end
b4;
for i=1:2
b5(:,i)=b4(:,i)*(1-t)+b4(:,i+1)*t;
end
b5;
b6(:,1)=b5(:,1)*(1-t)+b5(:,2)*t;

if a==1
hold on
plot(f(1,:),f(2,:),'-k','LineWidth',2)
plot(b(1,:),b(2,:),'-ko','MarkerSize',5)
plot(b(1,1),b(2,1),'-ko','MarkerSize',5,'MarkerFaceColor','k')
plot(b(1,end),b(2,end),'-ko','MarkerSize',5,'MarkerFaceColor','k')
% plot(b1(1,:),b1(2,:),'g*')
plot(b1(1,:),b1(2,:),'k-')
% plot(b2(1,:),b2(2,:),'k*')
plot(b2(1,:),b2(2,:),'k-')
plot(b3(1,:),b3(2,:),'k-')
% plot(b3(1,:),b3(2,:),'m*')
plot(b4(1,:),b4(2,:),'k-')
% plot(b4(1,:),b4(2,:),'y*')
plot(b5(1,:),b5(2,:),'k-')
% plot(b5(1,:),b5(2,:),'c*')
% plot(b6(1,:),b6(2,:),'o','MarkerSize',2,'MarkerEdgeColor','k','MarkerFaceColor','r')
hold off 
elseif a==0
    plot(f(1,:),f(2,:),'-k','LineWidth',2)
else
eror('parametrul trebuie sa fie 1 (cu poligon de ontrol) sau 0 (fara poligon de control)')
end