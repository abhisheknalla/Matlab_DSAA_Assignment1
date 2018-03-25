function[] = prob4a()

recObj = audiorecorder(44100,24,1);

disp('Start speaking.')
recordblocking(recObj, 5);
disp('End of Recording.');

disp(recObj)

% Play back the recording.
%play(recObj);

myRecording = getaudiodata(recObj);

%sound(y,Fs);

filename = 'handel.wav';
audiowrite(filename, myRecording ,44100);

[y,Fs] = audioread('handel.wav');
sound(y,Fs);

