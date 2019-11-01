[PROP21_3_225,Nport,t]=readsp2('D:\Pascal\Propeller\HH\PROP3GHzCW225s2X_2.s2p',2);
[BG21_3_225,Nport,t]=readsp2('D:\Pascal\Propeller\HH\BG3GHzCW225s2X_2.s2p',2);
S21_3_225 = PROP21_3_225-BG21_3_225;
[S,F,T,P_3] = spectrogram(S21_3_225(:,2,1),2*4098,2*2048,2*4098,100000/225);
figure;imagesc(T,F,fftshift(20*log10(abs(P_3)/max(abs(P_3(:)))),1))
