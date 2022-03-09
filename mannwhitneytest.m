%take two files to be statistically compared
ePF = 'w0_SE_disp.csv';
iPF = 'exp_disp_SE.csv';

%read data from files
exp_PF = csvread(ePF);
imp_PF = csvread(iPF);

%Wilcoxon rank sum/mannwhitney u test and print result to console
[p,h] = ranksum(exp_PF(:,1),imp_PF(:,1))