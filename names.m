% Task 1: Spline Your Name


% 1) Spline Interpolation of 'Syafiqah'

% use subplot for plotting different graphs in the same figure
% Define data points for x and y coordinates
% Each line is the x and y coordinate for one letter respectively

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

n = length(x1);
t = 0:n-1; % Parametric coordinate t
tt = 0:0.01:n-1; % More dense coordinate tt for spline interpolation

% Compute spline interpolation
xx = spline(t, x1, tt);
yy = spline(t, y1, tt);

% Plot settings
figure(1)
plot(xx, yy, 'k', 'LineWidth',1.5) % plot spline
hold on
plot(x1, y1, 'bo', 'MarkerFaceColor', 'b') % plot data points
axis([-0.2 15 -2 4])
grid on
title('Spline Interpolation of Cursive Name Syafiqah')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on

% note: all comments are the same for the following names

% 2) Spline Interpolation of 'Fiqah'

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

n = length(x2);
t = 0:n-1; 
tt = 0:0.01:n-1; 

xx = spline(t, x2, tt);
yy = spline(t, y2, tt);

figure(1)
plot(xx, yy, 'k', 'LineWidth', 1.5) 
hold on
plot(x2, y2, 'bo', 'MarkerFaceColor', 'b') 
axis([-0.2 6 -0.2 3])
grid on
title('Spline Interpolation of Cursive Name Fiqah')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on

% 3) Spline Interpolation of 'Bazilah'

subplot(4,1,3);
x3 = [1.0 1.5 1.90 1.55 2.0 1.75 1.25 1.3 1.4 ...
    3.05 2.7 2.3 2.40 2.75 3.1 3.05 3.40 3.70 ...
    3.70 3.95 4.15 3.95 3.70 4.15 4.0 3.60 3.90 4.4 4.70 ...
    4.70 4.65 4.7 5.0 5.325 ...
    5.325 5.55 5.5 5.4 5.3 5.5 5.9 ...
    6.65 6.3 5.9 6.00 6.40 6.7 6.60 6.85 7.214 ...
    7.214 7.5 7.40 7.3 7.15 7.55 7.8 7.9 7.95 8.4];
y3 = [1.6 1.9 1.80 1.40 1.2 0.85 0.85 1.3 1.7 ...
    1.50 1.6 1.2 0.85 1.05 1.6 0.95 1.05 1.45 ...
    1.45 1.50 1.55 1.25 0.95 0.90 0.4 0.45 0.75 1.1 1.45 ...
    1.45 1.00 0.8 0.9 1.25 ...
    1.250 1.90 2.0 1.6 0.9 0.8 1.2 ...
    1.50 1.6 1.2 0.85 1.05 1.6 0.95 0.90 1.236 ...
    1.236 1.8 2.00 1.6 0.80 1.40 1.5 1.2 0.90 1.2];
    
n = length(x3);
t = 0:n-1;
tt = 0:0.01:n-1;

xx = spline(t, x3, tt);
yy = spline(t, y3, tt);

figure(1)
plot(xx, yy, 'k', 'LineWidth',1.5)
hold on
plot(x3, y3, 'bo', 'MarkerFaceColor', 'b')
axis([0 9 0 3])
grid on
title('Spline Interpolation of Cursive Name Bazilah')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on

% 4) Spline Interpolation of 'Hilal'

subplot(4,1,4);
x4 = [0.3 0.55 0.5 0.25 0.3 0.55 1.25 1.6 1.4 1.25 ...
1.6 1.9 2.05 1.95 1.8 1.9 2.1 2.35 2.6 2.8 3 2.8 2.6 2.8 3.03 3.55 ...
4.35 4.65 4.4 3.3 3.12 4.35 4.65 4.7 4.9 5.1 5.3 5.5 5.3 5.1 5.3 5.4 5.5];
y4 = [3.3 1.5 0.85 0.3 1 1.5 1.65 2.5 3.3 1.65 0.3 1.3 1.85 ...
2.15 1.85 1.3 0.5 0.3 0.8 1.5 2.8 3.3 2.8 1.5 0.576 0.11 0.3 ...
1.1 1.9 1.9 0.38 0.3 1.1 0.5 0.3 0.6 1.5 2.6 3.3 2.6 1.5 0.7 0.3];

n = length(x4);
t = 0:n-1; 
tt = 0:0.01:n-1; 

xx = spline(t, x4, tt);
yy = spline(t, y4, tt);

figure(1)
plot(xx, yy, 'k', 'LineWidth', 1.5) 
hold on
plot(x4, y4, 'bo', 'MarkerFaceColor', 'b') 
axis([-0.2 6 -0.2 4.5])
grid on
title('Spline Interpolation of Cursive Name Hilal')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on
