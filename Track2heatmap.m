test=[]
close all;
temp=dataDensity(test(:,1), test(:,2),800,600,[0 800 0 600]);

%newData = test(test(:,1)>80,:);


figure;scatter(test(:,1),test(:,2),'.');
%figure;scatter(newData(:,1),newData(:,2),'.');

%temp2=dataDensity(newData(:,1), newData(:,2),800,600,[0 800 0 600]);
%xlim([100 600]);
%ylim([0 350]);
figure;imagesc(smooth2a(temp,20,15));colormap(jet)

axis off
%figure;imagesc(smooth2a(temp2,20,15));colormap(jet)
preference = sum(test(:,1)<320)/length(test(:,1))