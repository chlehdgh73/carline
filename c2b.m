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
   
    
    
   %%%%%%%%%%%%%%%%%%%%%%%% 
    
    writeVideo(GrayAvi, grayData);
end
close(GrayAvi);







implay('testing.avi');






