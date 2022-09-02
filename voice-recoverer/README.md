## Voice Recoverer

The sound file ’faultyphone.wav’ is obtained by adding the sound
of the la-note on top of a voice recording. The voice recording is recovered by
designing an ideal band-pass/reject filter. The filter will make the power of the signal for certain frequencies 0, and it will not affect the signal for other frequencies. <br>

The given audio file is read to the time domain. Then, using fft and fftshift, it is moved from time domain to frequency domain. 
The aim is to filter out the ‘la’ note, which as a high frequency. In the frequency domain plot of the noisy signal, 
2 components were visible for the ‘la’ note -the noise-. 
So, using the maxk function, the indexes of these components are obtained.

The filter is created as a column vector, where every value except the indexes of components that are aimed to be deleted equal zero. 
Then convolution is applied and the components at these indexes are removed. 
As a result, the noise was removed. 
After that, the signal is moved back into the time domain and the clean voice is generated. The recovered sound file is 'faultyphone_filtered.wav'

The before and after of the plots of the signal for both time and frequency domains are given below. As seen in the figures, the components with high frequency is removed.
<img width="1000" alt="Screen Shot 2022-09-02 at 16 59 24" src="https://user-images.githubusercontent.com/48058901/188165598-59aeb4e3-2189-4286-8766-930fc4e4e0f3.png">

<i> Developed for CMPE 362 Introduction to Signal Processing for Computer Engineers	, Bogazici University, Fall 2020.<i>
