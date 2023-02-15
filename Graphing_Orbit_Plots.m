r = (-3:0.0002:3)';

%define the iteration value

itr = 10^3;

x = zeros(length(r), itr);

%add the initial value of the function

x0 = 5;

%define the function

x(:,1) = r.*cos(x0);

% WGM: Record all iterations
for i = 1:itr-1

    %function id defined over here

    x(:,i+1) = r.*cos(x(:,i));

end

% WGM: Skip the first 100 or so

x_skip_transients = x(:,101:end);

%Plot the iteration value

plot(r, x_skip_transients, '.', 'MarkerSize', 1);

% To add title of the plot

title('x verse r')

%to label the axis

xlabel('r');ylabel('x');

hold on

grid on;
hold off