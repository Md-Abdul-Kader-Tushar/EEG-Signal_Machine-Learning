clc;
clear all;
CH=xlsread('n1.xlsx');


X = CH(:,1:3);
y=CH(:,4);



SVMModel = fitcsvm(X,y);


classOrder = SVMModel.ClassNames
classOrder = {'versicolor'}
    {'virginica' }

sv = SVMModel.SupportVectors;
figure
gscatter(X(:,1),X(:,2),y)
hold on
plot(sv(:,1),sv(:,2),'ko','MarkerSize',10)
legend('versicolor','virginica','Support Vector')
hold off


[label,score] = predict(SVMModel,X)

rng(1); % For reproducibility
ScoreSVMModel = fitPosterior(SVMModel);

[label,scores] = resubPredict(SVMModel);
[~,postProbs] = resubPredict(ScoreSVMModel)


