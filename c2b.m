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
   %�̹����� ���͸� �۾� ����
 %������ ���� ���ö�þ�
 %  F=fspecial('laplacian');
  % cf=filter2(F,grayData);%laplacian ����
  % 
 %  if i==100
  %     imshow(cf);
 %  imwrite(cf,'���ö�þ�.jpg');
 %  end
  %������ ���� ����þ�
  f=fspecial('gaussian',[11,11],2);
  cf2=filter2(f,grayData);
   surf(1:11,1:11,f);
  if i==100 
  imwrite(grayData,'����.jpg');
  imshow(cf2/255);
  imwrite(cf2/255,'����þ�.jpg');
  end
  %
  
  
   %%%%%%%%%%%%%%%%%%%%%%%% 
    
   writeVideo(GrayAvi, grayData);
end
close(GrayAvi);

%implay('testing.avi');






