% ����: ��pdfת�����bmpͼƬȥ��ˮӡ
% ���ߣ�PengSky
% ʱ�䣺2019��2��17��16��37��
% Ҫ�㣺���ûҶ�ͼ����ֵ�ָ�
for page = 1:102
    filename = strcat('math_Page', num2str(page), '.bmp'); 
    img = imread(filename);
    img = im2bw(img, 220/255); % ��ͼ��ת��Ϊ�Ҷ�ͼ���趨220/225Ϊ��ֵ���ж�ֵ��
    imwrite(img, strcat('.\result\\', filename));
    disp(strcat('ȥˮӡ��ɣ���', num2str(page), '��'));
end
disp('Finish!')
