% 模块声明
-module(module).
% 导出函数，可以在其它文件中调用。１表示函数接受１个参数。
-export([double/1, fab/1, mult/2]).
% 导入某个模块的函数
-import(io, [format/1, format/2]).
% 模块被加载时自动运行函数
-on_load(start/0).

% 函数名Ｘ不能是小写，否则编译时报错。
double(X) ->
    2 * X.

% 注意分号，表示函数还未结束.
fab(1) ->
    1;
fab(N) ->
    N * fab(N-1).

mult(X, Y) ->
    X * Y.

start() ->
    format("hello ~s~n", ["sb"]),
    format("start up...~n").