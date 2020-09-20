%Функция считает все возможные перестановки чисел от 1 до n
function D = alg_fct(inputNumber)
auxiliaryArray = 1;
if inputNumber == 1 % также хотел сделать для нуля, но команда 0 || 1 работает неверно.
    o = num2str(inputNumber);
    stringFor1 = [o,'! =', o]; disp(stringFor1);
else
    for numberOfRecursion = 2:inputNumber
        additionalArray = ones(factorial(numberOfRecursion-1),1).* numberOfRecursion;
        auxiliaryArray = [additionalArray , auxiliaryArray];
        numberOfPermutations = 0; % число перестановок
        startLine = 0; % номер строки "с"
        endLine = 1; % номер строки "до"
        while numberOfPermutations ~= numberOfRecursion
            C = [auxiliaryArray(1 : factorial(numberOfRecursion-1), 2:end)];
            auxiliaryArray = [C, auxiliaryArray(1 : factorial(numberOfRecursion-1),1)];
            D((1+startLine):factorial(numberOfRecursion-1)*endLine, 1: numberOfRecursion) = auxiliaryArray;
            startLine = startLine + factorial(numberOfRecursion-1);
            endLine = endLine + 1;
            numberOfPermutations = numberOfPermutations + 1;
        end
        auxiliaryArray = D;
    end
end
end
