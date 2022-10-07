%Yushas Data
clc;
clear all;
CH=importdata('yusha.txt');

y=CH(:,2);
z=y(1:1000);
Fs=256;
Fn=Fs/2;
[b,a] = butter(5,[0.5 40]/Fn);
x=filter(b,a,z);

title('original eeg signal of ch-2');
Fs=256;
Fn=Fs/2;
[b,a] = butter(5,[8 13]/Fn);
alpha=filter(b,a,x);


subplot 411
plot(alpha)
[b,a] = butter(5,[14 25]/Fn);
beta=filter(b,a,x);
subplot 412
plot(beta)
[b,a] = butter(5,[3 7]/Fn);
theta=filter(b,a,x);

subplot 413
plot(theta)

[b,a] = butter(5,[1 3.5]/Fn);
delta=filter(b,a,x);

subplot 414
plot(delta)
