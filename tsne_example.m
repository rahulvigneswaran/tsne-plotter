clc ; close all ; clear all ;

load('inputs/Data.mat');
load('inputs/Label.mat');

rng default % for reproducibility
Y = tsne(Data,'Algorithm','barneshut','NumPCAComponents',50);

figure
gscatter(Y(:,1),Y(:,2),Label)


rng default % for fair comparison
Y3 = tsne(Data,'Algorithm','barneshut','NumPCAComponents',50,'NumDimensions',3);
figure
scatter3(Y3(:,1),Y3(:,2),Y3(:,3),15,Label,'filled');
view(-93,14)