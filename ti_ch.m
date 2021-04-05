imgPath = './bian/';        % 图像库路径
imgDir  = dir([imgPath '*.jpg']); % 遍历所有jpg格式文件

for i = 1:length(imgDir)          % 遍历结构体就可以一一处理图片了
    img = imread([imgPath imgDir(i).name]); %读取每张图片
    if ndims(img)==3
        img = rgb2gray(img)
    end
    img(img<100)= 0;
    img(img>=100)= 255;
    img_fill = imfill(img,'holes');
    figure;
    subplot(1,2,1),imshow(img),title('原图');
    subplot(1,2,2),imshow(img_fill),title('填充');
%     saveas(gcf, ['./sc_64/',imgDir(i).name]);
%     imwrite(a,['./cun232/',imgDir(i).name])
    close all
%     break;
    imwrite(img_fill, ['./tian/',imgDir(i).name])
    
end



% Using By WT WT
% Using By WT 
% Using By WT 
% Using By WT 