%___________________________________________________________________%
%                                                                   %
%                                                                   %
%  Developed in MATLAB R2018b                                       %
%                                                                   %
%  Author and programmer: Seyedali Mirjalili                        %
%                                                                   %
%         e-Mail: ali.mirjalili@gmail.com                           %
%                 seyedali.mirjalili@griffithuni.edu.au             %
%                                                                   %
% Source codes demo version 1.0
% ------------------------------------------------------------------------------------------------------------
% Main paper (Please refer to the main paper):
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
% ------------------------------------------------------------------------------------------------------------
%  Main idea: Shimin Li
%  Author and programmer: Shimin Li,Ali Asghar Heidari,Huiling Chen
%  e-Mail: simonlishimin@foxmail.com
% ------------------------------------------------------------------------------------------------------------
%  Co-author:
%             Huiling Chen(chenhuiling.jlu@gmail.com)
%             Mingjing Wang(wangmingjing.style@gmail.com)
%             Ali Asghar Heidari(aliasghar68@gmail.com, as_heidari@ut.ac.ir)
%             Seyedali Mirjalili(ali.mirjalili@gmail.com)
%             
%             Researchgate: Ali Asghar Heidari https://www.researchgate.net/profile/Ali_Asghar_Heidari
%             Researchgate: Seyedali Mirjalili https://www.researchgate.net/profile/Seyedali_Mirjalili
%             Researchgate: Huiling Chen https://www.researchgate.net/profile/Huiling_Chen
% ------------------------------------------------------------------------------------------------------------
% _____________________________________________________
%  Co-author and Advisor: Seyedali Mirjalili
%
%         e-Mail: ali.mirjalili@gmail.com
%
%       Homepage: http://www.alimirjalili.com
% _____________________________________________________
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This function initialize the first population of search agents
function Positions=initialization(SearchAgents_no,dim,ub,lb)

Boundary_no= size(ub,2); % numnber of boundaries

% If the boundaries of all variables are equal and user enter a signle
% number for both ub and lb
if Boundary_no==1
    Positions=rand(SearchAgents_no,dim).*(ub-lb)+lb;
end

% If each variable has a different lb and ub
if Boundary_no>1
    for i=1:dim
        ub_i=ub(i);
        lb_i=lb(i);
        Positions(:,i)=rand(SearchAgents_no,1).*(ub_i-lb_i)+lb_i;
    end
end