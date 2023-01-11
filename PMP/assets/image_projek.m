%Natasha Amiera Binti Azman
%Nurul Hafika Hafina Binti Mohamad Fadzli
%Nurfatin Nabilah Binti Abdul Aziz

clear all, close all, clc
I = imread('jambu2.jpg');
I=rgb2gray(I);
figure, imshow(I);
figure, imhist(I); %look at the hist to get a threshold, e.g., 110
 
BW=roicolor(I, 90, 255); % makes a binary image
BW = bwareafilt(BW,[100 Inf]); %removing small noise pixels
figure, imshow(BW) % all pixels in (110, 255) will be 1 and white
% the rest is 0 which is black
figure, imhist(BW);
L = bwlabel(BW); % label each object
%Step 2: see the label of each object
s = regionprops(L, 'Centroid');
imshow(BW)
hold on
for k = 1:numel(s)
c = s(k).Centroid;
text(c(1), c(2), sprintf('%d', k), ...
'HorizontalAlignment', 'center', ...
'VerticalAlignment', 'middle');
end
hold off
% Step 3: find the area of the object you want using its label
Frui_condition=0;
Area_1=0;
figure
for k = 1:numel(s)
Obj = (L == k); % is the label number of the first object.
spoilage_area = regionprops(Obj,'Area') % determine each image area
for (k=1)
imshow(Obj);
end
if (spoilage_area.Area < 2000)
Frui_condition=Frui_condition + 10;
else
Frui_condition=Frui_condition + 20;
end
end
close
Final_total=Frui_condition/100
if(Final_total<1.00)
    h = msgbox('The fruit is not spoilt     >_< YOU CAN EAT >_< ', 'Fruit condition')
else
    h = msgbox('The fruit is spoilt   >..<  YOU WILL STOMACHACHE  >..< ', 'Fruit condition')
end


