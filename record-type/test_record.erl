-module(test_record).
-export([new_record/0, accessField/1, modifyField/1, check_person_type/1, pattern_matching/0]).
% 定义一个record类型
-record(person, {name = "", phone = [], address}).

% 创建record实例
new_record() -> 
    Person = #person{phone=[1,7,3,2,5,3,5,2,7,3,6], name = "zhanj"},
    Person.

% 根据名称访问record的字段
accessField(Person) ->
    string:concat("hello ", Person#person.name).

% 更新record里的字段
modifyField(Person) ->
    Person#person{name="Zhan Jie"}.

% 测试是否是某种record类型
check_person_type (Person) when is_record(Person, person) -> a_person;
check_person_type (_) -> not_person.

pattern_matching() ->
    Person = (new_record())#person{address="New York"},
    % 在这里和直接访问字段的写法一样：
    % Result = Person#person.name,
    % Address = Person#person.address
    #person{name = Result, address = Address} = Person,
    io:format("person attributes: name=~s, address=~s.~n", [Result, Address]).