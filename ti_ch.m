imgPath = './bian/';        % ͼ���·��
imgDir  = dir([imgPath '*.jpg']); % ��������jpg��ʽ�ļ�

for i = 1:length(imgDir)          % �����ṹ��Ϳ���һһ����ͼƬ��
    img = imread([imgPath imgDir(i).name]); %��ȡÿ��ͼƬ
    if ndims(img)==3
        img = rgb2gray(img)
    end
    img(img<100)= 0;
    img(img>=100)= 255;
    img_fill = imfill(img,'holes');
    figure;
    subplot(1,2,1),imshow(img),title('ԭͼ');
    subplot(1,2,2),imshow(img_fill),title('���');
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