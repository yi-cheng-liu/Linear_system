clear all

clc

%% Problem 1
A = [0.3536 0 0.25 -0.25; 
    0 -1.4142 -1 -1; 
    0.6124 0 0.433 -0.433];

%(a)
V1_Astar = orth(A', 0.0001);
V1_AstarA = orth(A'*A, 0.0001);

%(b)
V2_A = null(A, 0.0001);
V2_AstarA = null(A'*A, 0.0001);

%(c)
[eig_vec, eig_val] = eig(A'*A);
S = [eig_val(4,4) 0 0 0; 
    0 eig_val(3,3) 0 0; 
    0 0 0 0; 
    0 0 0 0];
AstarA = [V1_Astar V2_A] * S * [V1_Astar'; V2_A'];

%(d)
U1 = A * V1_Astar * (inv(sqrt(S(1:2,1:2))));

%% Problem 2
A = [0.0974 -0.1178 0.7876 -0.1168 0.0178;
     0.1291 -0.1174 1.2850 0.0302 0.0971
     0.0528 0.1119 0.1325 0.7668 0.0637;
     0.0424 0.2647 0.2806 1.7644 0.1195];

%% Problem 3
t = 0:0.01:1;
function xd = dynamic_response(t,x)
    
    A = [-2.6 0.25 -38 0; 
        -0.075 -0.27 4.4 0; 
        0.078 -0.99 -0.23 0.052;
        1 0.078 0 0];
    B = [17 7;
        0.82 -3.2;
        0 0.046;
        0 0];

    if t < 0
        u1 = 0;
    elseif (t<=1) or (t>=0)
        u1 = 1;
        u2 = 0;
    else
        u1 = 0;
    end

    if t < 0
        u2 = 0;
    elseif (t<=1) or (t>=0)
        u2 = 1;
        u1 = 0;
    else
        u2 = 0;
    end

end


%% Problem 5
M = 0.5;
m = 0.2;
b = 0.1;
I = 0.006;
g = 9.8;
l = 0.3;

den = I*(M+m) + M*m*l*l;
A = [0 1                    0               0;
     0 (-(I+m*l*l)*b)/den (m*m*g*l*l)/den 0;
     0 0                    0               1;
     0 (-m*l*b)/den         m*g*l*(M+m)/den 0];
B = [0; (I+m*l*l)/den; 0; m*l/den];


%% Problem 8
A = [0 1 0 0; 
    0 -0.1818 2.6727 0;
    0 0 0 1; 
    0 -0.4545 31.1818 0]




