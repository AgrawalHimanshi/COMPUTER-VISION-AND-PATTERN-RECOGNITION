i=imread('D:\BVCOE\python classes\opencv\datasets\4.1.08.tiff');
i2=rgb2gray(i);
sq=ones(3,3);
% id1 = imdilate(i,sq);
id=imdilate(i2,sq);
figure,
subplot(2,6,1),imshow(i2),title('original'),
subplot(2,6,2),imshow(id),title('dilated'),

ie=imerode(i2,sq);
subplot(2,6,3),imshow(ie),title('eroded'),

ii=i2-ie;
subplot(2,6,4),imshow(ii),title('boundary'),

im=id-ie;
subplot(2,6,5),imshow(im),title('morphological gradient'),

iext=id-i2;
subplot(2,6,6),imshow(iext),title('ext boundary'),

io=imopen(i2,sq);
subplot(2,6,7),imshow(io),title('opening'),

figure, imshow(i);
ic=imclose(i2,sq);
subplot(2,6,8),imshow(ic),title('closing'),

%imhist(ic),
%iequi=histeq(ic);
%figure,imhist(iequi)