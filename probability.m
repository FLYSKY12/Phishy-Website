function [souvik] = probability()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes her
% input=importdata(training_set_q2);
input = importdata('C:\Users\souvik paul\Desktop\ques2 ML\training_set_q2.csv');
Y([6001:9055], 1)=input([6001:9055],31);
X([6001:9055],[2:31])=input([6001:9055],[1:30]);
X([6001:9055],1)=ones([1:3055],1);
ans=0.0;
 a=0.0009;
 l=10;
%while a<1,
 while l<1000,

q=grd(a,l);
q2=grd2(a,l);
   c=0;  
k=6001;
while k<=9055,
test=X(k,[1:31]);
test2=X(k,[1:31]);
val=q*test';
val2=q2*test2';
pro=1/(1+exp(-val));
pro2=1/(1+exp(-val2));
if pro < pro2
    pro=1;
else
pro=-1;
end;
if(pro==Y(k, 1))
    c=c+1;
end;
k=k+1;
end;
pro=c*100/3055;
if(pro>ans)
 alpha =a;
    lamda=l;
    ans=pro;
end;
l=l+400;
 %  end;
 %   a=a+0.1;
end;
souvik=[ans lamda alpha];
end