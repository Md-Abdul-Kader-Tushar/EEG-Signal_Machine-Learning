clc;
clear all;
CH=load('Avi1.txt');
x=CH(:,8);

figure(1);
plot(x);


%%overall Filtering 
Fs=256;
Fn=Fs/2;
[b,a] = butter(4,[0.5 40]/Fn);
filt_x=filter(b,a,x);
figure(2);
plot(filt_x)

% 
% 
% 
% %Magnitude And Phase respose of filter
% [A,B,C,D] = butter(4,[0.5 40]/128);
% sos = ss2sos(A,B,C,D);
% fvt = fvtool(sos,'Fs',256);
% legend(fvt,'butter')
% 
% 
% 
% 
% %%Alpha Beta Delta Theta finding
% [b,a] = butter(4,[8 13]/Fn);
% alpha=filter(b,a,x);
% figure(4);
% subplot 411
% plot(alpha);
% title('alpha band')
% 
% [b,a] = butter(3,[14 25]/Fn);
% beta=filter(b,a,x);
% subplot 412
% plot(beta);
% title('beta band')
% 
% [b,a] = butter(3,[4 7]/Fn);
% theta=filter(b,a,x);
% subplot 413
% plot(theta);
% title('Theta band')
% 
% [b,a] = butter(3,[1 3.5]/Fn);
% delta=filter(b,a,x);
% subplot 414
% plot(delta);
% title('Delta band')
% 
% 
% % %PCA
% % [coeff,score,latent,tsquared,explained] = pca(CH(:,7:9));
% % scatter3(score(:,1),score(:,2),score(:,3));
% % score(:,2)
% % figure(5);
% % axis equal
% % xlabel('1st Principal Component')
% % ylabel('2nd Principal Component')
% % zlabel('3rd Principal Component')
% % 
% % 
% % 
% % 
% % %%DWT
% 
% 
% 
% %%ANN
% 
% 
% 
% 
% 
% 
% 
% 
