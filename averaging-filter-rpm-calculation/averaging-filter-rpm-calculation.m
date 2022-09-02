close all;
clear;

[audio, fs] = audioread('enginesound.m4a');

% construct the 50-point average time filter
avg_filter= 1/50*ones(50,1);
% apply the filter
filtered_audio = filter(avg_filter,1,audio);

% before = audioplayer(audio,fs);
% after = audioplayer(5*filtered_audio,fs);
% play(before);
% play(after);

% determine the fundamental frequency using the spectogram
spectrogram(filtered_audio);
f0_normalized = 9.1 * 10^(-3);
% normalize the frequency value
f0 = (f0_normalized * fs)/ 2;

% calculate the RPM
Nstroke =4;
Ncylinder=4;
Nrpm = (1/2) * (Nstroke/Ncylinder) * (60/1) * f0;
