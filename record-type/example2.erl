-module(example2).
-export([test/0]).
-record(person, {name = "", phone = [], address}).

find_phone ([#person{name = Name, phone = Phone, address = Address} | _ ], Name) ->
    {found, {Name, Phone, Address}};

find_phone([_ | T], Name) ->
    find_phone(T, Name);

find_phone ([], Name) ->
    not_found.

form_list(List, Elem, 0) ->
    List;

form_list(List, Elem, N) ->
    form_list([Elem|List], Elem#person{name=string:concat("zhan-jie-", integer_to_list(N-1))}, N-1).

test() ->
    Person = #person{name="zhan-jie", phone=[1,5,1,4,0,0,9,9,6,9,1], address="China"},
    People = form_list([], Person, 10),
    find_phone(People, "zhan-jie-8").
    