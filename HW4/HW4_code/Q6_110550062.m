clear all;
x = [-0.2 -0.1 0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1.1 1.2 1.3 1.4];
y = [0.4 0.5 0.6 0.7 0.8 0.9 1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2 2.1 2.2 2.3 2.4 2.5 2.6];
g_result = 0;
f_result = 0;

g = @(y) sin(2*y);
f = @(x) exp(x);
for j = 1:2:21
    r = (y(j) + y(j+2))/2;
    g_result = g_result + 0.1 * (5/9 * g(-0.1 * sqrt(3/5) + r) + 8/9 * g(r) + 5/9 * g(0.1 * sqrt(3/5) + r));
end

for j = 1:2:15
    r = (x(j) + x(j+2))/2;
    f_result = f_result + 0.1 * (5/9 * f(-0.1 * sqrt(3/5) + r) + 8/9 * f(r) + 5/9 * f(0.1 * sqrt(3/5) + r));
end

end_result = g_result * f_result;

fprintf("Integral of f(x) from -0.2 to 1.4 = %.8f\n", f_result);
fprintf("Integral of g(y) from 0.4 to 2.6 = %.8f\n", g_result);
fprintf("Total integral of f(x)*g(y) = %.8f\n", end_result);