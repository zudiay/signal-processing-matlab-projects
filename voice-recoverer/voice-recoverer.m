close all;
clear;

% take the audio signal and convert into frequency domain
[noisy, fs] = audioread('faultyphone.wav');
len = length(noisy);
noisy_fq = fft(noisy);
noisy_fq_shifted = fftshift(noisy_fq);
f0 = (-len/2:len/2-1)*(fs/len);

% find the frequency values to filter and the index
[max_values, max_indexes] = maxk(noisy_fq_shifted,2);

filter = ones([len, 1]);
filter(max_indexes(1)) = 0;
filter(max_indexes(2)) = 0;

filtered = filter .* noisy_fq_shifted;

filtered_unshifted = ifftshift(filtered);
filtered_time = ifft(filtered_unshifted,'symmetric');

audiowrite('faultyphone_filtered.wav',filtered_time,fs);

figure;
subplot(2,2,1);
plot(f0,noisy);           
title('Signal Before Filter (Time)');
xlabel('Time');
ylabel('Value');

subplot(2,2,2);
plot(f0, noisy_fq_shifted);
title('Signal Before Filter(Frequency)');
xlabel('Frequency');
ylabel('Value');

subplot(2,2,3);
plot(f0,filtered_time);           
title('Signal After Filter (Time)');
xlabel('Time');
ylabel('Value');

subplot(2,2,4);
plot(f0,filtered);           
title('Signal After Filter (Frequency)');
xlabel('Frequency');
ylabel('Value');
