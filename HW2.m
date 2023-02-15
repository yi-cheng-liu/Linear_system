A = [1 2 0; 1 0 1; 2 4 0; 2 2 1;];
B = transpose(A);
Y = null(B);
Z = null(A);

%4
x1 = [1;0];
x2 = [0;1];
x3 = [1.5;0.5];
p_inverse = [1, 1.5; 0, 0.5];
p = [1, -3; 0, 2];
A = [0, -1; 1, 0];
A_bar = [-3, -5; 2, 3];

x11 = p * A * p_inverse * x1;
x111 = A_bar * x1;
x22 = p * A * p_inverse * x2;
x222 = A_bar * x2;
x33 = p_inverse * x3;
x333 = A_bar * x3;