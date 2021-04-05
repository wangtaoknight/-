imgPath = './masks/';        % 图像库路径
imgDir  = dir([imgPath '*.jpg']); % 遍历所有jpg格式文件

for i = 1:length(imgDir)          % 遍历结构体就可以一一处理图片了
    img = imread([imgPath imgDir(i).name]); %读取每张图片
    if ndims(img)==3
        img = rgb2gray(img);
    end
%     img = imread('2731_mask.jpg');
    BW = im2bw(img,0.8);
% BW2 = bwperim(BW,8);
    img_fill = edge(BW,'canny');
    figure;
    subplot(1,2,1),imshow(img),title('原图');
    subplot(1,2,2),imshow(img_fill),title('填充');
%     saveas(gcf, ['./sc_64/',imgDir(i).name]);
%     imwrite(a,['./cun232/',imgDir(i).name])
    close all
%     break;
    img_fill = img_fill*255;
    imwrite(img_fill, ['./bian/',imgDir(i).name])
    
end




I = imread('2731_mask.jpg');
BW = im2bw(I,0.8);
% BW2 = bwperim(BW,8);
BW2 = edge(BW,'canny');

