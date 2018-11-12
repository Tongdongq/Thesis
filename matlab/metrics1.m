
% plot sensitivity vs score thres and number of seeds
% darwin, 20x ref

% x = [0, 200, 400, 600, 800];
% sens = [[100, 99.8, 98.6, 94.7, 88.7],
%      [100, 99.9, 98.6, 94.7, 88.6],
%      [99.98, 99.90, 98.6, 94.6, 88.5],
%      [98.4, 98.3, 97.0, 93.1, 87.0],
%      [94.3, 94.2, 92.9, 89.2, 83.4]];
% spec = [[95.9, 96.3, 97.2, 97.7, 98.1],
%         [96.0, 96.4, 97.2, 97.6, 97.9],
%         [96.5, 96.8, 97.3, 97.6, 97.9],
%         [96.8, 97.0, 97.4, 97.6, 97.8],
%         [96.9, 97.1, 97.4, 97.6, 97.8]];
% rows nXXX: 1400, 800, 400, 200, 150
 
% hold on % retain old plots when plotting new ones
%  plot(x, sens(1,:),'-s','MarkerSize', 5);
%  plot(x, sens(2,:),'-o','MarkerSize', 5);
%  plot(x, sens(3,:),'-x','MarkerSize', 5);
%  plot(x, sens(4,:),'-^','MarkerSize', 5);
%  plot(x, sens(5,:),'-+','MarkerSize', 5);
%  title('Darwin sensitivity vs score threshold, 20x reference-based')
%  xlabel('Score threshold')
%  ylabel('Sensitivity (%)')
%  legend('n1400','n800','n400','n200','n150')
% hold off
% figure;
% hold on
%  plot(x, spec(1,:),'-s','MarkerSize', 5);
%  plot(x, spec(2,:),'-o','MarkerSize', 5);
%  plot(x, spec(3,:),'-x','MarkerSize', 5);
%  plot(x, spec(4,:),'-^','MarkerSize', 5);
%  plot(x, spec(5,:),'-+','MarkerSize', 5);
%  title('Darwin specificity vs score threshold, 20x reference-based')
%  xlabel('Score threshold')
%  ylabel('Specificity (%)')
%  legend({'n1400','n800','n400','n200','n150'},'Location','northwest')
% hold off
%%%%%%%%%%%%%%%%%%%
% plot max sensitivity and runtime vs num_seeds (darwin), 20x ref
% runtime = [62, 47, 37, 32, 30];
% max_sens = [100, 100, 99.98, 98.4, 94.3];
% num_seeds = [1400, 800, 400, 200, 150];
% 
% figure;
%  yyaxis left
%  plot(num_seeds, max_sens,'-s')
%  axis([100 1500 90 100])
%  title('Runtime Darwin vs number of seeds, 20x reference-based')
%  xlabel('Number of seeds')
%  ylabel('Maximum sensitivity')
%  yyaxis right
%  plot(num_seeds, runtime,'-^')
%  ylabel('Runtime (s)')
%  axis([100 1500 25 65])
%  legend({'Maximum sensitivity','Runtime'},'Location','southeast')
%%%%%%%%%%%%%%%%%%%%%%%
% daligner l setting, sens, spec, 20x ref
%  labels = {' l1000',' l900',' l800',' l700',' l600',' l500',' l400',' l300',' l200',' l100'};
%  sens = [89.1, 91.7, 94.0, 95.9, 97.6, 98.8, 99.5, 99.8, 99.97, 100];
%  spec = [97.9, 97.8, 97.6, 97.4, 97.2, 96.9, 96.7, 96.4, 96.0, 95.2];
%  plot(sens,spec,'-o')
%  text(sens,spec,labels,'VerticalAlignment','bottom')
%  xlabel('Sensitivity')
%  ylabel('Specificity')
%  axis([88 101 95 98.5])
%  title({'Sensitivity and specificity of Daligner for different settings','20x reference-based'})
%%%%%%%%%%%%%%%%%%%%%%%
% darwin, 10x, denovo, ref vs ref
% N = 1400, seed_occ = 64, CBT: 1 64 64
% w = [2,3,4,5,6,7,9,13];
% sens = [98.4,99.09,99.34,99.33,99.20,99.05,98.4,95.9];
% runtimes = [94.5, 103.4, 105.6, 105.7, 114.9, 117.2,114.0,104.4];
% hold on;
% yyaxis left
% plot(w,sens,'-s')
% ylabel('Sensitivity')
% title({'Sensitivity and runtime of Darwin','10x denovo A vs A'})
% yyaxis right
% plot(w,runtimes,'-o')
% xlabel('Window size')
% ylabel('Runtime (s)')
%%%%%%%%%%%%%%%%%%%%%%%
% darwin, 10x denovo, ref vs ref
% sens and spec for different N and S
% s = [400, 600, 650, 700, 750];
% sens = [[99.33,99.33,99.16,97.0,93.7],
%         [98.9,98.9,98.7,96.5,93.0],
%         [97.8,97.8,97.6,95.2,91.5]];
% spec = [[78.2,85.0,87.4,89.3,90.0],
%         [78.8,85.4,87.8,89.7,90.4],
%         [80.1,86.2,88.6,90.5,91.1]];
%     
% hold on
% plot(s,sens(1,:),'-s')
% plot(s,sens(2,:),'-+')
% plot(s,sens(3,:),'-^')
% axis([400 755 91 inf])
% line([400 750],[100 100])
% ylabel('Sensitivity')
% xlabel('Score threshold')
% title({'Darwin sensitivity vs score threshold','10x denovo A vs A'})
% legend('n1400','n1100','n800')
% figure; hold on;
% s(1) = 0;
% plot(s,spec(1,:),'-s')
% plot(s,spec(2,:),'-+')
% plot(s,spec(3,:),'-^')
% axis([400 755 78 92])
% line([400 750],[100 100])
% ylabel('Specificity')
% xlabel('Score threshold')
% title({'Darwin specificity vs score threshold','10x denovo A vs A'})
% legend('n1400','n1100','n800')
%%%%%%%%%%%%%%%%%%%%
% daligner, 10x denovo, ref vs ref, 
% but ref vs read have very similar results
s = [0,200,220,240,260];
sens = [[99.79,99.78,99.62,97.6,92.3],
        [99.59,99.58,99.42,97.4,92.1],
        [98.9,98.9,98.7,96.7,91.6],
        [96.9,96.9,96.7,94.8,89.9]];
spec = [[86.7,86.7,87.1,89.0,90.4],
        [86.8,86.8,87.2,89.0,90.4],
        [87.1,87.1,87.5,89.2,90.5],
        [87.5,87.5,87.9,89.6,90.8]];
hold on;
plot(s,sens(1,:),'-s')
plot(s,sens(2,:),'-+')
plot(s,sens(3,:),'-^')
plot(s,sens(4,:),'-o')
axis([150 270 89.6 inf])
line([150 270],[100 100])
ylabel('Sensitivity')
xlabel('Score threshold')
title({'Daligner sensitivity vs score threshold','10x denovo, A vs A'})
legend('base','h45','k15','k16')
figure; hold on;
plot(s,spec(1,:),'-s')
plot(s,spec(2,:),'-+')
plot(s,spec(3,:),'-^')
plot(s,spec(4,:),'-o')
axis([150 270 86.5 inf])
ylabel('Specificity')
xlabel('Score threshold')
title({'Daligner specificity vs score threshold','10x denovo, A vs A'})
legend('base','h45','k15','k16','Location','northwest')
%%%%%%%%%%%%%%%%%











