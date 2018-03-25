function[] = prob4b(freq)
[y,Fs] = audioread('handel.wav');
sound(y,Fs);

Fs2 = round(Fs*(freq/44));

newfile1 = 'handel1.wav';
audiowrite(newfile1, y, Fs2);

[y,Fs2] = audioread('handel1.wav');
sound(y,Fs2);




