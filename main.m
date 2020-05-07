%---------------------------------------------------------------------------------------------------------------------------
%  Author, inventor and programmer: Ali Asghar Heidari,
%  Researcher, Department of Computer Science, School of Computing, National University of Singapore, Singapore
%  Exceptionally Talented Ph. DC funded by Iran's National Elites Foundation (INEF), University of Tehran
%  03-03-2019

%  Researchgate: https://www.researchgate.net/profile/Ali_Asghar_Heidari

%  e-Mail: as_heidari@ut.ac.ir, aliasghar68@gmail.com,
%  e-Mail (Singapore): aliasgha@comp.nus.edu.sg, t0917038@u.nus.edu
%---------------------------------------------------------------------------------------------------------------------------
%  Co-author: Shimin Li(simonlishimin@foxmail.com)
%             Huiling Chen(chenhuiling.jlu@gmail.com)
%             Mingjing Wang(wangmingjing.style@gmail.com)
%             Seyedali Mirjalili(ali.mirjalili@gmail.com)
%---------------------------------------------------------------------------------------------------------------------------

% Please refer to the main paper:
% Slime Mould Algorithm: A New Method for Stochastic Optimization
% Shimin Li, Huiling Chen, Mingjing Wang, Ali Asghar Heidari, Seyedali Mirjalili
% Future Generation Computer Systems,2020
% DOI: https://doi.org/10.1016/j.future.2020.03.055
% https://www.sciencedirect.com/science/article/pii/S0167739X19320941
% ------------------------------------------------------------------------------------------------------------
% Website of SMA: http://www.alimirjalili.com/SMA.html
% You can find and run the SMA code online at http://www.alimirjalili.com/SMA.html

% You can find the SMA paper at https://doi.org/10.1016/j.future.2020.03.055
% Please follow the paper for related updates in researchgate: https://www.researchgate.net/publication/340431861_Slime_mould_algorithm_A_new_method_for_stochastic_optimization
%---------------------------------------------------------------------------------------------------------------------------
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all 
close all
clc

N=30; % Number of search agents

Function_name='F1'; % Name of the test function, range from F1-F13

T=500; % Maximum number of iterations

dimSize = 30;   %dimension size

% Load details of the selected benchmark function
[lb,ub,dim,fobj]=Get_Functions_SMA(Function_name,dimSize);

[Destination_fitness,bestPositions,Convergence_curve]=SMA(N,T,lb,ub,dim,fobj);


%Draw objective space
figure,
hold on
semilogy(Convergence_curve,'Color','b','LineWidth',4);
title('Convergence curve')
xlabel('Iteration');
ylabel('Best fitness obtained so far');
axis tight
grid off
box on
legend('SMA')

display(['The best location of SMA is: ', num2str(bestPositions)]);
display(['The best fitness of SMA is: ', num2str(Destination_fitness)]);

        



