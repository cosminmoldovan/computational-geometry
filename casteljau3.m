function casteljau3(t,b,a)
y=0:0.01:1;
B0=(1-y).^3;
B1=3*(1-y).^2.*y;
B2=3*(1-y).*(y.^2);
B3=y.^3;
B=[B0;B1;B2;B3];
%pol bernstein in camp de vect
f=b*B; %curba bezier
%repr

b1=zeros(2,3); b2=zeros(2,2);
b3=zeros(2,1);
for i=1:3
b1(:,i)=b(:,i)*(1-t)+b(:,i+1)*t;
end
b1;
for i=1:2
b2(:,i)=b1(:,i)*(1-t)+b1(:,i+1)*t;
end
b2;
b3(:,1)=b2(:,1)*(1-t)+b2(:,2)*t;

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
% plot(b3(1,:),b3(2,:),'o','MarkerSize',2,'MarkerEdgeColor','k','MarkerFaceColor','r')
hold off 
elseif a==0
    plot(f(1,:),f(2,:),'-k','LineWidth',2)
else
eror('parametrul trebuie sa fie 1 (cu poligon de ontrol) sau 0 (fara poligon de control)')
end
