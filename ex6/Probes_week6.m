A = [1 2 3 0;
     2 3 4 5;
     3 4 5 6;
     4 5 3 4;
     5 4 6 4;
     6 2 4 1;
     7 1 5 7;
     10 3 1 6; 
     12 5 6 9]


[M, I] = min(A(:,4));


vocablist = getVocabList();


if any(strcmp(vocablist,'aa'))
    disp('Heell yeah')
else
% Do Something else
end

v = 'Hello y name is Alex'
class(v)
length(v)
size(v)





email = 'Well as i told you the last day I was in my bedroom with anything to do'


[str, email] = strtok(email)

size(str)
class(str)

size([vocablist{:}])

% I = find([vocablist{:}] == str)


CELL={'a','b','c','d'};
vocablist{1}
size(CELL)

c = 'char'
% I = find([vocablist{:}], 'char')


find(strcmp(CELL,'c'))

find(strcmp(vocablist, 'aa'))

vocablist{'aa'}
