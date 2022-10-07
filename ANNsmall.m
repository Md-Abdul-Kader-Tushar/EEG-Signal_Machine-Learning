clc;
clear all;
a=load('n1.txt');
a1=a(:,8);
b=load('n2.txt');
b1=b(:,8);
c=load('n3.txt');
c1=c(:,8);
d=load('n4.txt');
d1=d(:,8);
e=load('n5.txt');
e1=e(:,8);
f=load('n6.txt');
f1=f(:,8);
g=load('n7.txt');
g1=f(:,8);
h=load('n8.txt');
h1=h(:,8);
i=load('n9.txt');
i1=i(:,8);
j=load('n10.txt');
j1=j(:,8);
% 
% figure;
% plot(a1);
% figure;
% plot(b1);
% figure;
% plot(c1);
% figure;
% plot(d1);
% figure;
% plot(e1);
% figure;
% plot(f1);
% figure;
% plot(g1);
% figure;
% plot(h1);
% figure;
% plot(i1);
% figure;
% plot(j1);
% 
% %%overall Filtering 
Fs=256;
Fn=Fs/2;
[k,l] = butter(4,[0.5 40]/Fn);
filt_a1=filter(k,l,a1);
% figure;
% plot(filt_a1);

filt_b1=filter(k,l,b1);
% figure;
% plot(filt_b1);

filt_c1=filter(k,l,c1);
% figure;
% plot(filt_c1);

filt_d1=filter(k,l,d1);
% figure;
% plot(filt_d1);

filt_e1=filter(k,l,e1);
% figure;
% plot(filt_e1);

filt_f1=filter(k,l,f1);
% figure;
% plot(filt_f1);

filt_g1=filter(k,l,g1);
% figure;
% plot(filt_g1);

filt_h1=filter(k,l,h1);
% figure;
% plot(filt_h1);

filt_i1=filter(k,l,i1);
% figure;
% plot(filt_i1);

filt_j1=filter(k,l,j1);
% figure;
% plot(filt_j1);



a11=filt_a1(1:10);
a12=filt_a1(11:20);
b11=filt_b1(1:10);
b12=filt_b1(11:20);
c11=filt_c1(1:10);
c12=filt_c1(11:20);
d11=filt_d1(1:10);
d12=filt_d1(11:20);
e11=filt_e1(1:10);
e12=filt_e1(11:20);
f11=filt_f1(1:10);
f12=filt_f1(11:20);
g11=filt_g1(1:10);
g12=filt_g1(11:20);
h11=filt_h1(1:10);
h12=filt_h1(11:20);
i11=filt_i1(1:10);
i12=filt_i1(11:20);
j11=filt_j1(1:10);
j12=filt_j1(11:20);

ft_a11= [mean(a11) median(a11) std(a11)]
ft_b11= [mean(b11) median(b11) std(b11)]
ft_c11= [mean(c11) median(c11) std(c11)]
ft_d11= [mean(d11) median(d11) std(d11)]
ft_e11= [mean(e11) median(e11) std(e11)]
ft_f11= [mean(f11) median(f11) std(f11)]
ft_g11= [mean(g11) median(g11) std(g11)]
ft_h11= [mean(h11) median(h11) std(h11)]
ft_i11= [mean(i11) median(i11) std(i11)]
ft_j11= [mean(j11) median(j11) std(j11)]

ft_a12= [mean(a12) median(a12) std(a12)]
ft_b12= [mean(b12) median(b12) std(b12)]
ft_c12= [mean(c12) median(c12) std(c12)]
ft_d12= [mean(d12) median(d12) std(d12)]
ft_e12= [mean(e12) median(e12) std(e12)]
ft_f12= [mean(f12) median(f12) std(f12)]
ft_g12= [mean(g12) median(g12) std(g12)]
ft_h12= [mean(h12) median(h12) std(h12)]
ft_i12= [mean(i12) median(i12) std(i12)]
ft_j12= [mean(j12) median(j12) std(j12)]

% z=xlsread('n1.xlsx');
% 
% Input=z(:,1:3);
% Output=z(:,4);
