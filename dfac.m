function y=dfac(x)
y=1;
k=x;
while k>0
    y=y*k;
    k=k-2;
end
if x==0
    y=1;
end