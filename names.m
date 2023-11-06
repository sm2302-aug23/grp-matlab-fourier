subplot(4,1,1);
x1 = [0 5/3 7/6 2/3 0.5 5/6 5/3 5/6 2/3 5/3 ...
    2 13/6 11/4 3 35/12 17/6 7/3 2 10/3 ...
    13/3 49/12 15/4 7/2 15/4 13/3 14/3 55/12 14/3 5 ...
    65/12 6 35/6 65/12 17/3 37/6 23/4 11/2 11/2 19/3 ...
    43/6 7 41/6 7 23/3 ...
    26/3 101/12 97/12 47/6 49/6 26/3 9 107/12 9 113/12 89/10 29/3 ...
    32/3 125/12 121/12 59/6 121/12 32/3 11 131/12 11 34/3 ...
    12 77/6 38/3 73/6 12 145/12 149/12 51/4 13 40/3 14];
y1 = [5/3 8/3 3 8/3 13/6 1.5 1/3 0 0.5 2/3 ...
    5/3 1/3 1/3 5/3 1/6 -5/6 -4/3 -1 2/3 ...
    17/12 5/3 17/12 2/3 1/12 1/6 17/12 17/12 0 2/3 ...
    1.5 13/6 3 5/3 0 1/3 4/3 7/5 1 2/3 ...
    4/3 5/3 4/3 0 2/3 ...
    17/12 5/3 17/12 2/3 0 1/6 4/3 4/3 -1 -1 0 2/3 ...
    17/12 5/3 17/12 2/3 1/12 1/6 17/12 17/12 0 2/3 ...
    5/3 8/3 3 8/3 5/3 0 4/3 5/3 4/3 0 2/3];

n1 = length(x1);
t1 = 0:n1-1;
tt1 = 0:0.01:n1-1;

xx1 = spline(t1, x1, tt1);
yy1 = spline(t1, y1, tt1);

figure(1)
plot(xx1, yy1, 'k', 'LineWidth',1.5)
hold on
plot(x1, y1, 'bo', 'MarkerFaceColor', 'b')
axis([-0.2 15 -5 5])
grid on
t = tiledlayout(2,2);
ax1 = nexttile;
plot(ax1, xx1, yy1);
title('Spline Interpolation of Cursive Name Syafiqah')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on

subplot(4,1,2);
x2 = [1.6 1.2 1.1 1.1 1.1 0.9 0.8 1.1 1.5 ...
1.5 1.5 1.65 1.8 1.9 ... 
2.3 2.1 1.9 2.0 2.2 2.3 2.3 2.3 2.5 2.6 2.3 2.6 ...
3.0 2.8 2.6 2.7 2.9 3.0 3.0 3.1 3.3 ...
3.3 3.5 3.4 3.3 3.3 3.3 3.5 3.67 3.8 3.9 4.0 4.1];
y2 = [2.5 2.5 2.3 1.8 1.3 1.0 1.3 1.8 1.8 ...
1.5 1.2 1.1 1.2 1.3 ...
1.8 1.9 1.3 1.1 1.3 1.8 1.0 0.4 0.2 0.4 1.0 1.3 ...
1.8 1.9 1.3 1.1 1.3 1.8 1.3 1.0 1.5 ...
1.5 2.2 2.4 2.2 1.5 1.0 1.5 1.7 1.5 1.2 1.0 1.2];
n2 = length(x2);
t2 = 0:n2-1; 
tt2 = 0:0.01:n2-1; 

xx2 = spline(t2, x2, tt2);
yy2 = spline(t2, y2, tt2);

figure(1)
plot(xx2, yy2, 'k', 'LineWidth', 1.5) 
hold on
plot(x, y, 'bo', 'MarkerFaceColor', 'b') 
axis([-0.2 15 -5 5])
grid on
t = tiledlayout(2,2);
ax2 = nexttile;
plot(ax2, xx2, yy2);
title('Spline Interpolation of Cursive Name Fiqah')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on

