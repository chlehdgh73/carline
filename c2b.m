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
   
    
    
   %%%%%%%%%%%%%%%%%%%%%%%% 
    
    writeVideo(GrayAvi, grayData);
end
close(GrayAvi);







implay('testing.avi');






