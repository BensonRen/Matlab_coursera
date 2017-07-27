function [nseg,npol]=fence(lng,seg)
nseg=ceil(lng/seg);
npol=nseg+1;
end