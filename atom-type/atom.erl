-module(atom).
-export([convert/2, convert_tuple/1]).

convert(Value, inch) ->
    Value / 2.54;

convert(Value, centimeter) ->
    Value * 2.54.

convert_tuple({Value, inch}) ->
    {Value / 2.54, centimeter};

convert_tuple({Value, centimeter}) ->
    {Value * 2.54, inch}.