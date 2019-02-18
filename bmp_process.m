% 功能: 将pdf转换后的bmp图片去除水印
% 作者：PengSky
% 时间：2019年2月17日16点37分
% 要点：利用灰度图像阈值分割
for page = 1:102
    filename = strcat('math_Page', num2str(page), '.bmp'); 
    img = imread(filename);
    img = im2bw(img, 220/255); % 将图像转换为灰度图像并设定220/225为阈值进行二值化
    imwrite(img, strcat('.\result\\', filename));
    disp(strcat('去水印完成：第', num2str(page), '张'));
end
disp('Finish!')
