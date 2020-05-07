% ------------------------------------------------------------------------------
%  Please refer to the main paper:
% Main paper (Please refer to the main paper):
% Slime Mould Algorithm: A New Method for Stochastic Optimization
% Shimin Li, Huiling Chen, Mingjing Wang, Ali Asghar Heidari, Seyedali Mirjalili
% Future Generation Computer Systems,2020
% DOI: https://doi.org/10.1016/j.future.2020.03.055
% https://www.sciencedirect.com/science/article/pii/S0167739X19320941
% ------------------------------------------------------------------------------------------------------------
% Website of SMA: http://www.alimirjalili.com/SMA.html
% You can find and run the SMA code online at http://www.alimirjalili.com/SMA.html
% ------------------------------------------------------------------------------


function [lb,ub,dim,fobj] = Get_Functions_SMA(F,DimValue)

switch F
    case 'F1'
        fobj = @F1;
        lb=-100;
        ub=100;
        dim=DimValue;
        
    case 'F2'
        fobj = @F2;
        lb=-10;
        ub=10;
        dim=DimValue;
        
    case 'F3'
        fobj = @F3;
        lb=-100;
        ub=100;
        dim=DimValue;
        
    case 'F4'
        fobj = @F4;
        lb=-100;
        ub=100;
        dim=DimValue;
        
    case 'F5'
        fobj = @F5;
        lb=-30;
        ub=30;
        dim=DimValue;
        
    case 'F6'
        fobj = @F6;
        lb=-100;
        ub=100;
        dim=DimValue;
        
    case 'F7'
        fobj = @F7;
        lb=-1.28;
        ub=1.28;
        dim=DimValue;
        
    case 'F8'
        fobj = @F8;
        lb=-500;
        ub=500;
        dim=DimValue;
        
    case 'F9'
        fobj = @F9;
        lb=-5.12;
        ub=5.12;
        dim=DimValue;
        
    case 'F10'
        fobj = @F10;
        lb=-32;
        ub=32;
        dim=DimValue;
        
    case 'F11'
        fobj = @F11;
        lb=-600;
        ub=600;
        dim=DimValue;
        
    case 'F12'
        fobj = @F12;
        lb=-50;
        ub=50;
        dim=DimValue;
        
    case 'F13'
        fobj = @F13;
        lb=-50;
        ub=50;
        dim=DimValue;
end

end

% F1

function o = F1(x)
o=sum(x.^2);
end

% F2

function o = F2(x)
o=sum(abs(x))+prod(abs(x));
end

% F3

function o = F3(x)
dim=size(x,2);
o=0;
for i=1:dim
    o=o+sum(x(1:i))^2;
end
end

% F4

function o = F4(x)
o=max(abs(x));
end

% F5

function o = F5(x)
dim=size(x,2);
o=sum(100*(x(2:dim)-(x(1:dim-1).^2)).^2+(x(1:dim-1)-1).^2);
end

% F6

function o = F6(x)
o=sum(abs((x+.5)).^2);
end

% F7

function o = F7(x)
dim=size(x,2);
o=sum([1:dim].*(x.^4))+rand;
end

% F8

function o = F8(x)
o=sum(-x.*sin(sqrt(abs(x))));
end

% F9

function o = F9(x)
dim=size(x,2);
o=sum(x.^2-10*cos(2*pi.*x))+10*dim;
end

% F10

function o = F10(x)
dim=size(x,2);
o=-20*exp(-.2*sqrt(sum(x.^2)/dim))-exp(sum(cos(2*pi.*x))/dim)+20+exp(1);
end

% F11

function o = F11(x)
dim=size(x,2);
o=sum(x.^2)/4000-prod(cos(x./sqrt([1:dim])))+1;
end

% F12

function o = F12(x)
dim=size(x,2);
o=(pi/dim)*(10*((sin(pi*(1+(x(1)+1)/4)))^2)+sum((((x(1:dim-1)+1)./4).^2).*...
(1+10.*((sin(pi.*(1+(x(2:dim)+1)./4)))).^2))+((x(dim)+1)/4)^2)+sum(Ufun(x,10,100,4));
end

% F13

function o = F13(x)
dim=size(x,2);
o=.1*((sin(3*pi*x(1)))^2+sum((x(1:dim-1)-1).^2.*(1+(sin(3.*pi.*x(2:dim))).^2))+...
((x(dim)-1)^2)*(1+(sin(2*pi*x(dim)))^2))+sum(Ufun(x,5,100,4));
end

function o=Ufun(x,a,k,m)
o=k.*((x-a).^m).*(x>a)+k.*((-x-a).^m).*(x<(-a));
end
