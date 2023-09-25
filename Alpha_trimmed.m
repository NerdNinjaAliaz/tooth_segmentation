function I2d2=Alpha_trimmed(n2Ima,d,c)
one=ones(c);
one=one/sum(sum(one));
d1=d/2;
I2d2=double(0*n2Ima);
for i=d1+1:(c*c)-d1
    I2d2=I2d2+double(ordfilt2(n2Ima,i,one));
end
I2d2=I2d2/((c*c)-d);