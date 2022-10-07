clc;
clear all;



a=load('Rakib1.txt');
a1=a(:,7);
b=load('Rakib2.txt');
b1=b(:,7);
c=load('Rakib3.txt');
c1=c(:,7);
d=load('Rakib4.txt');
d1=d(:,7);
e=load('Rakib5.txt');
e1=e(:,7);
f=load('Rakib6.txt');
f1=f(:,7);
g=load('Rakib7.txt');
g1=f(:,7);
h=load('Rakib8.txt');
h1=h(:,7);
i=load('Rakib9.txt');
i1=i(:,7);
j=load('Rakib10.txt');
j1=j(:,7);



k=load('Rakib21.txt');
k1=k(:,7);
l=load('Rakib22.txt');
l1=l(:,7);
m=load('Rakib23.txt');
m1=m(:,7);
n=load('Rakib24.txt');
n1=n(:,7);
o=load('Rakib25.txt');
o1=o(:,7);
p=load('Rakib26.txt');
p1=p(:,7);
q=load('Rakib27.txt');
q1=q(:,7);
r=load('Rakib28.txt');
r1=r(:,7);
s=load('Rakib29.txt');
s1=s(:,7);
t=load('Rakib30.txt');
t1=t(:,7);


%overall Filtering 
Fs=256;
Fn=Fs/2;
[u,v] = butter(4,[0.5 40]/Fn);

x1=filter(u,v,a1);
x2=filter(u,v,b1);
x3=filter(u,v,c1);
x4=filter(u,v,d1);
x5=filter(u,v,e1);
x6=filter(u,v,f1);
x7=filter(u,v,g1);
x8=filter(u,v,h1);
x9=filter(u,v,i1);
x10=filter(u,v,j1);
y1=filter(u,v,k1);
y2=filter(u,v,l1);
y3=filter(u,v,m1);
y4=filter(u,v,n1);
y5=filter(u,v,o1);
y6=filter(u,v,p1);
y7=filter(u,v,q1);
y8=filter(u,v,r1);
y9=filter(u,v,s1);
y10=filter(u,v,t1);



% feat_y1= [mean(y1) median(y1) std(y1) max(y1) min(y1)]

feat_x1 = [mean(x1)  median(x1)  std(x1)  max(x1)  min(x1) mode(x1) 1]/3
feat_x2 = [mean(x2)  median(x2)  std(x2)  max(x2)  min(x2) mode(x2) 1]/3
feat_x3 = [mean(x3)  median(x3)  std(x3)  max(x3)  min(x3) mode(x3) 1]/3
feat_x4 = [mean(x4)  median(x4)  std(x4)  max(x4)  min(x4) mode(x4) 1]/3
feat_x5 = [mean(x5)  median(x5)  std(x5)  max(x5)  min(x5) mode(x5) 1]/3
feat_x6 = [mean(x6)  median(x6)  std(x6)  max(x6)  min(x6) mode(x6) 1]/3
feat_x7 = [mean(x7)  median(x7)  std(x7)  max(x7)  min(x7) mode(x7) 1]/3
feat_x8 = [mean(x8)  median(x8)  std(x8)  max(x8)  min(x8) mode(x8) 1]/3
feat_x9 = [mean(x9)  median(x9)  std(x9)  max(x9)  min(x9) mode(x9) 1]/3
feat_x10= [mean(x10) median(x10) std(x10) max(x10) min(x10) mode(x10) 1]/3

feat_y1 = [mean(y1)  median(y1)  std(y1) max(y1)  min(y1)  mode(y1)  0]/3
feat_y2 = [mean(y2)  median(y2)  std(y2) max(y2)  min(y2)  mode(y2)  0]/3
feat_y3 = [mean(y3)  median(y3)  std(y3) max(y3)  min(y3)  mode(y3)  0]/3
feat_y4 = [mean(y4)  median(y4)  std(y4) max(y4)  min(y4)  mode(y4)  0]/3
feat_y5 = [mean(y5)  median(y5)  std(y5) max(y5)  min(y5)  mode(y5)  0]/3
feat_y6 = [mean(y6)  median(y6)  std(y6) max(y6)  min(y6)  mode(y6)  0]/3
feat_y7 = [mean(y7)  median(y7)  std(y7) max(y7)   min(y7)  mode(y7)  0]/3
feat_y8 = [mean(y8)  median(y8)  std(y8) max(y8)  min(y8)  mode(y8)  0]/3
feat_y9 = [mean(y9)  median(y9)  std(y9) max(y9)  min(y9)  mode(y9)  0]/3
feat_y10= [mean(y10) median(y10) std(y10) max(y10) min(y10) mode(y10) 0]/3


z1= [feat_x1; feat_x2; feat_x3; feat_x4; feat_x5; feat_x6; feat_x7; feat_x8; feat_x9; feat_x10; feat_y1; feat_y2; feat_y3; feat_y4; feat_y5; feat_y6; feat_y7; feat_y8; feat_y9; feat_y10;]