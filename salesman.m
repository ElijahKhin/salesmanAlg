% ������ �����������: ����� ����� �������� �������,
% ���������� ����� 6 ������� ���� �� �� ������ ����
% � ����������� ��������� � �������� �����.

clc;
clear all;

% ������� ��������� ������� ����� �������� (i j)
mainArray = [ inf 2 inf 1 3 inf; 2 inf 3 inf 2 5; inf 3 inf inf 10 2;
    1 inf inf inf 1 2;  3 2 10 1 inf 7;  inf 5 2 2 7 inf;];

% ��������� ������������ �������� �������� ��� ������
%(�� �������� �������� � ��������), ����� �� ������ �6
permutations = alg_fct(5);

% ������� ���������/��������� ������
startAndEnd = zeros(120, 1);
for localLine = 1 : factorial(5)
    startAndEnd(1+(localLine-1),1)= 6; % ������ � �����
end

% ��������� ������������ �������� �������� ��� ������
permutations = [startAndEnd permutations startAndEnd];

% ������ ���������
priceToGo = zeros(120, 7);
totalPrice = zeros(120, 1);
for line = 0:119
    for column = 0:5
        priceToGo(1+line, 1+column) = mainArray(permutations(1+line, 1+column),...
            permutations(1+line, 2 + column));
        totalPrice(1+line,1) = sum(priceToGo(1+line, 1:end));
    end
end
disp(min(totalPrice))
