function [decBin, fracBin] = dec_bin(x) %Step#1
int = floor(x);  %Step#2
frac = x-int;
decBin = decmBin(int);
fracBin = fractBin(frac); 
disp(decBin)
disp(fracBin)
end

function bin1 = decmBin(x)  %Step#3
q=1;
r=0;
bin1='0';
i=1;
while q ~= 0
    q = floor(x/2);
    r= rem(x,2);
    x=q;
    bin1(i)= num2str(r);
    i=i+1;
end
bin1=flip(bin1);
end
function frac1 = fractBin(x)  %Step#4
q=1;
r=0;
frac1='0';
i=1;
for i=1:20
    q= x*2;
    frac1(i)= num2str(floor(q));
    x= q- floor(q);
end
end