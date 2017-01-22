data='drive.avi';
reader=VideoReader(data);
numFrames=reader.NumberOfFrames;
GrayAvi=VideoWriter('testing.avi','Uncompressed AVI');
GrayAvi.FrameRate=reader.FrameRate; 
open(GrayAvi);

for i=1 : numFrames
    imageData=read(reader,i);
    grayData=rgb2gray(imageData);
   %%%%%%%%%%%%%%%%%%%%%%%
   %이미지에 필터링 작업 공간
 %고주파 필터 라플라시안
 %  F=fspecial('laplacian');
  % cf=filter2(F,grayData);%laplacian 필터
  % 
 %  if i==100
  %     imshow(cf);
 %  imwrite(cf,'라플라시안.jpg');
 %  end
  %저주파 필터 가우시안
  f=fspecial('gaussian',[11,11],2);
  cf2=filter2(f,grayData);
   surf(1:11,1:11,f);
  if i==100 
  imwrite(grayData,'원래.jpg');
  imshow(cf2/255);
  imwrite(cf2/255,'가우시안.jpg');
  end
  %
  
  
   %%%%%%%%%%%%%%%%%%%%%%%% 
    
   writeVideo(GrayAvi, grayData);
end
close(GrayAvi);

%implay('testing.avi');






