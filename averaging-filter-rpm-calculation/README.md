## Averaging filter and RPM calculation

The sound file ’enginesound.m4a’ is used on an averaging filter and to calculate the RPM of an engine. The filter coefficients as a column vector with 50 components
50-point average time filter is implemented and applied in timedomain. The resulting sound signal is generated and compared it with the original sound.

To calculate the RPM of the engine, the following formula is used. (Nstroke and Ncylinder are both 4 for this engine. f0 is the fundamental frequency):
````
NRPM = (1/2) * (Nstroke/Ncylinder) * (60 [RPM]/1 [Hz]) * f0[Hz]
````

<img width="1000" alt="Screen Shot 2022-09-02 at 16 51 15" src="https://user-images.githubusercontent.com/48058901/188161562-0b5eed6b-607f-44b9-9362-1ae49b3ccd2c.png">

The fundamental frequency reveals itself with a big amplitude at a low frequency in spectrum analysis on the spectogram plot. (Yellow line in the figure below, 9.1 * 10^(-3) pi radians/sample). 
As this value is normalized, it is converted back to fundamental frequency. The given formula to compute the RPM value.
The amplitude of the filtered sound is increased to make a fair comparison. It can be observed that the filtered sound is more stable.

<i> Developed for CMPE 362 Introduction to Signal Processing for Computer Engineers	, Bogazici University, Fall 2020.<i>
