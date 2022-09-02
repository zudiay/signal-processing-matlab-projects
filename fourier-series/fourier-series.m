close all;
clear;

% given information
fs = 100;
t =-10:1/fs:10-1/fs;
x = sawtooth(2*pi*0.1*t+pi);

% construction the ak values based on Question 1.1
a0 = 0;
ak(1:15)=0;  % ak array
for k = 1:15
    ak(k) = 1i*(-1)^k/(k*pi);
end

% reproducing the signal using the first 3 harmonics
three_harmonics = a0;
for k = 1:3
   three_harmonics = three_harmonics +  2*  ak(k)*exp(1i*0.2*pi*k*t);
end

% reproducing the signal using the first 5 harmonics
five_harmonics = a0;
for k = 1:5
   five_harmonics = five_harmonics +  2*ak(k)*exp(1i*0.2*pi*k*t);
end

% reproducing the signal using the first 5 harmonics
fifteen_harmonics = a0;
for k = 1:15
   fifteen_harmonics = fifteen_harmonics +  2*ak(k)*exp(1i*0.2*pi*k*t);
end

% constructing the desired figure
hold on;
% plot 4 signals on top of each other
plot(t,x);
plot(t,three_harmonics);
plot(t,five_harmonics);
plot(t,fifteen_harmonics);
% set the title and the labels
title('Signal and Harmonics Sum');
xlabel('time');
ylabel('amplitude');
% adjust the y aksis range
ylim([-1.5 1.5]);
% add legend on bottom left corner
legend({'original','sum of first 3 harmonics','sum of first 5 harmonics','sum of first 15 harmonics'}, 'Location', 'southwest');
% add grid and adjust the grid precision
grid on;
xticks(-10:1:10);
set(gca,'XMinorTick','on');
% add grid to top and right also, without labels
axes('xlim', [-10 10], 'ylim', [-1.5 1.5], 'color', 'none', 'YAxisLocation', 'right', 'XAxisLocation', 'top','YTickLabel',[], 'XTickLabel',[], 'XMinorTick','on')
hold off
