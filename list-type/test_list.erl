-module(test_list).
-export([list_first/0, list_length/1]).

list_first() ->
    [First|_] = [1,2,3,4,5,6],
    First.
% 求列表的长度。也适用于查字符串长度: list_length("Are you ok?").
list_length([]) ->
    0;
list_length([_|Rest]) ->
    1 + list_length(Rest).