## Fourier Series

<img width="400" alt="Screen Shot 2022-09-02 at 16 33 34 1" src="https://user-images.githubusercontent.com/48058901/188157393-678c7125-e521-41f8-b1c5-2ab68ed347f1.png">

Fourier series coefficients for the given periodic signal x(t) in figure (x(t) = 0.2t for − 5 < t < 5) are calculated manually. 
Values for, ak when k is 0, even, and odd are provided. 
The magnitude and phase spectrum of the signal w.r.t. frequency (Hz) are drawn. (see handwritten answers below) <br>

The original signal in figure 1 (x(t) = 0.2t for − 5 < t < 5) is constructed using MATLAB, using ak coefficients calculated manually . 
````
fs = 100;
t = -10:1/fs:10-1/fs;
x = sawtooth(2*pi*0.1*t+pi);
````

The process is done using the sum of three, five and fifteen harmonics. Harmonic Summation graph is produced as follows:
<img width="400" alt="Screen Shot 2022-09-02 at 17 02 59" src="https://user-images.githubusercontent.com/48058901/188166330-255a5e3d-c28d-4cb1-8bca-d372ea06be8d.png">


Handwritten calculations <br>
<img width="600" alt="Screen Shot 2022-09-02 at 17 01 20" src="https://user-images.githubusercontent.com/48058901/188166881-b4d88677-fadd-45d5-92be-32ccd85cc765.png">

<img width="600" alt="Screen Shot 2022-09-02 at 17 01 29" src="https://user-images.githubusercontent.com/48058901/188166913-71bf5a0a-e837-4de7-8c94-c575bbd2f849.png">


<i> Developed for CMPE 362 Introduction to Signal Processing for Computer Engineers	, Bogazici University, Fall 2020.<i>
