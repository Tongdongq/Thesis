
% plot sensitivity vs score thres and number of seeds

x = [0, 200, 400, 600, 800];
sens = [[100, 99.8, 98.6, 94.7, 88.7],
     [100, 99.9, 98.6, 94.7, 88.6],
     [99.98, 99.90, 98.6, 94.6, 88.5],
     [98.4, 98.3, 97.0, 93.1, 87.0],
     [94.3, 94.2, 92.9, 89.2, 83.4]];
spec = [[95.9, 96.3, 97.2, 97.7, 98.1],
        [96.0, 96.4, 97.2, 97.6, 97.9],
        [96.5, 96.8, 97.3, 97.6, 97.9],
        [96.8, 97.0, 97.4, 97.6, 97.8],
        [96.9, 97.1, 97.4, 97.6, 97.8]];
% rows nXXX: 1400, 800, 400, 200, 150
 
% hold on % retain old plots when plotting new ones
%  plot(x, sens(1,:),'-s','MarkerSize', 5);
%  plot(x, sens(2,:),'-o','MarkerSize', 5);
%  plot(x, sens(3,:),'-x','MarkerSize', 5);
%  plot(x, sens(4,:),'-^','MarkerSize', 5);
%  plot(x, sens(5,:),'-+','MarkerSize', 5);
%  title('Sensitivity vs score threshold, 20x reference-based')
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
%  title('Specificity vs score threshold, 20x reference-based')
%  xlabel('Score threshold')
%  ylabel('Specificity (%)')
%  legend({'n1400','n800','n400','n200','n150'},'Location','northwest')
% hold off
%%%%%%%%%%%%%%%%%%%
% plot max sensitivity and runtime vs num_seeds (darwin)
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
% daligner l setting, sens, spec
 labels = {' l1000',' l900',' l800',' l700',' l600',' l500',' l400',' l300',' l200',' l100'};
 sens = [89.1, 91.7, 94.0, 95.9, 97.6, 98.8, 99.5, 99.8, 99.97, 100];
 spec = [97.9, 97.8, 97.6, 97.4, 97.2, 96.9, 96.7, 96.4, 96.0, 95.2];
 plot(sens,spec,'-o')
 text(sens,spec,labels,'VerticalAlignment','bottom')
 xlabel('Sensitivity')
 ylabel('Specificity')
 axis([88 101 95 98.5])
 title({'Sensitivity and specificity of Daligner for different settings','20x reference-based'})
%%%%%%%%%%%%%%%%%%%%%%%
% darwin, 10x, denovo
 sens

















