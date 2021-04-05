imgPath = './masks/';        % ͼ���·��
imgDir  = dir([imgPath '*.jpg']); % ��������jpg��ʽ�ļ�

for i = 1:length(imgDir)          % �����ṹ��Ϳ���һһ����ͼƬ��
    img = imread([imgPath imgDir(i).name]); %��ȡÿ��ͼƬ
    if ndims(img)==3
        img = rgb2gray(img);
    end
%     img = imread('2731_mask.jpg');
    BW = im2bw(img,0.8);
% BW2 = bwperim(BW,8);
    img_fill = edge(BW,'canny');
    figure;
    subplot(1,2,1),imshow(img),title('ԭͼ');
    subplot(1,2,2),imshow(img_fill),title('���');
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

