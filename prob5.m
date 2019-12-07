n = 0:199;
y = 0:199;
x = input('Please input function x(n): ');

for z = 1:200
    if y(z) == 0
        y(z) = -1.5*x(z) + 2*x(z + 1) - 0.5*x(z + 2);
    elseif y(z) > 0 && y(z) < 199
        y(z) = 0.5*x(z + 1) - 0.5*x(z - 1);
    elseif y(z) == 199
        y(z) = 1.5*x(z) - 2*x(z - 1) + 0.5*x(z - 2);
    end
end

plot(n, x)
hold on
plot(n, y)
legend('x(n)', 'y(n)')
xlabel('n')
ylabel('x, y')
hold off