a = [2 1; 1 -8];
ans1 = exp(a);
ans2 = expm(a);

%% HW5 Q1(a)
clear all
clc

A = [2 3; 3 1];
t = 0:0.01:6.28; 
x = sin(t); 
y = cos(t); 
v = [x ; y]; 
Av = A*v; 
figure(1); 
plot(v(1,:),v(2,:),'r');
hold on
plot(Av(1,:),Av(2,:),'b'); 
axis equal;
x = [0 -3.48399];
y = [0 -2.91186];
line(x,y)
text(-2,-1.5, 'lambda_1(e-val) = 4.54138');  
x = [0 -0.965887];
y = [0 1.2018];
line(x,y)
text(-0.4,1.2, 'lambda_2(e-val) = -1.541');  
legend('unit ball', 'operated', 'V1(e-vector)', 'V2(e-vector)');
title('EECS560 HW5 Q1(a), YI-CHENG, LIU')

%% HW5 Q1(b)
clear all
clc

A = [0.923879 -0.382683; 0.382683 0.923879];
t = 0:0.01:6.28; 
x = sin(t); 
y = cos(t); 
v = [x ; y]; 
Av = A*v; 
figure(2); 
plot(v(1,:),v(2,:),'r');
hold on
%plot(Av(1,:),Av(2,:),'b'); 
axis equal;
x = [0 -3.48399];
y = [0 -2.91186];
%line(x,y)
%text(-2,-1.5, 'lambda_1(e-val) = 4.54138');  
x = [0 -0.965887];
y = [0 1.2018];
%line(x,y)
%text(-0.4,1.2, 'lambda_2(e-val) = -1.541');  
legend('unit ball');
title('EECS560 HW5 Q1(b), YI-CHENG, LIU')
%% HW5 Q1(c)
clear
clc

A = [1 -1; 2 -1];
t = 0:0.01:6.28; 
x = sin(t); 
y = cos(t); 
v = [x ; y]; 
Av = A*v; 
figure(3); 
plot(v(1,:),v(2,:),'r');
hold on
plot(Av(1,:),Av(2,:),'b'); 
axis equal;
x = [0 -1.37768];
y = [0 -2.2262];
line(x,y)
text(-2.5,-1.5, 'lambda_1(e-val) = i');  
x = [0 -0.8589347];
y = [0 0.512085];
line(x,y)
text(-2,0.5, 'lambda_2(e-val) = -i');  
legend('unit ball', 'operated', 'V1(e-vector)', 'V2(e-vector)');
title('EECS560 HW5 Q1(c), YI-CHENG, LIU')