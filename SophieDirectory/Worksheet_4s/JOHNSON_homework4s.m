%% Intro Scratch Work Part I
a = 2; 
b = -1; 
if a>0 & b>0
    fprintf('hello world\n')
end
if round(a) == a & round(b) == b
    fprintf('hello world\n')
end
if a ~= 0 & b~= 0
    fprintf('hello world\n')
end
if ~isempty(a) & ~isempty(b)
    fprintf('hello world\n')
end
%% Intro Scratch Work Part II
a = 2; 
b = -1; 
if a>0 | b>0
    fprintf('hello world\n')
end
if round(a) == a | round(b) == b
    fprintf('hello world\n')
end
if a ~= 0 | b~= 0
    fprintf('hello world\n')
end
if isempty(a) | ~isempty(b)
    fprintf('hello world\n')
end
%% Intro Scratch Work Part III
a = 2; b = -1;
if xor(a>0,b>0)
    fprintf('hello world\n')
end
if xor(isempty(a), ~isempty(b))
    fprintf('hello world\n')
end
%% Intro Scratch Work Part IV
a = 1; 
b = 1; 
c = 0; 
% What will the results be? 
a & b & c %False
a & b | c %True
a | b & c %True
% Which expression is the third expression (above) equivalent to?
(a | b) & c %False
a | (b & c) %True
%% Short-Circuiting Intro Scratch Work Part V
a = 15; 
b = 5; 
if a < 0 && b > 0 % how would you translate this? If a is negative and b is positive. 
	print('hello world!\n')
end 
if a > 0 || b < 0 
	print('hello world!\n')
end
% Food for thought: is there a short-circuit version of xor? No because it
% is logically impossible. You have to evaluate all the way to the end.
% Question: what are the advantages/disadvantages of using if/else vs. switch/case? 
% If you use switch/case, it can be more condensed, however, switch/case
% does not have an else ability
%% Practice translating switch/case to if/else and vice versa
% 1. Translate the following to an if/else statement: 
condWord = 'tapper'; 
switch condWord
    case {'capper','gapper'}
        max_events = 7;     % doesn't include aspiration. is OST status but not a user event        
    case {'sapper','zapper'}
        max_events = 6; 
    case {'sea','C','Z','czar','gar','cod','god'}
        max_events = 5; 
end
fprintf('You may have at most %d events\n',max_events); 
%% 
condWord = 'tapper'; 
if condWord == 'capper' || condWord == 'gapper'
    max_events = 7;     % doesn't include aspiration. is OST status but not a user event        
elseif condWord == 'sapper' || condWord == 'zapper'
    max_events = 6; 
elseif condWord == {'sea','C','Z','czar','gar','cod','god'}
    max_events = 5; 
end
fprintf('You may have at most %d events\n',max_events);

%% 2. Translate the following to a switch/case statement: 
name = 'sarah';
switch name
    case {'sarah'}
        almaMater = 'UC Berkeley';
    case {'robin'}
        almaMater = 'Cornell University';
end
fprintf('%s earned her PhD at %s\n', name,almaMater);

%% 3. Can you translate the following to a switch/case statement? Why/why not?
% I do not think you can translate it because when I tried the strcmp
% function will not evaluate, and it will immediately jump to the otherwise
% statement. Below is what I tried to do:
name = 'ben';
switch name
    case strcmp(name, 'sarah')
        almaMater = 'UC Berkeley'; 
        possPro = 'her';
    case strcmp(name, 'robin')
        almaMater = 'Cornell University';
        possPro = 'her';
    case strcmp(name,'ben')
        almaMater = 'USC'; 
        possPro = 'his';
    case strcmp(name,'carrie')
        almaMater = 'MIT'; 
        possPro = 'her';
    otherwise
        almaMater = 'unknown'; 
        possPro = 'their';
end
fprintf('%s earned %s PhD at %s\n',name,possPro,almaMater)