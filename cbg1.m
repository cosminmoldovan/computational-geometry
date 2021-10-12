function [f]=cbg1(b,a)
t=0:0.01:1;
B0=(1-t);
B1=t;
B=[B0;B1];
f=b*B;
if a==1
hold on
plot(f(1,:),f(2,:),'-k','LineWidth',2)
plot(b(1,:),b(2,:),'-ko','MarkerSize',5)
plot(b(1,1),b(2,1),'-ko','MarkerSize',5,'MarkerFaceColor','k')
plot(b(1,end),b(2,end),'-ko','MarkerSize',5,'MarkerFaceColor','k')
hold off
elseif a==0
hold on
plot(f(1,:),f(2,:),'-k','LineWidth',2)
hold off
else
    eror('parametrul trebuie sa fie 1 (cu poligon de ontrol) sau 0 (fara poligon de control)')
end