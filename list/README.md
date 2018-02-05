### List ###

erlang表示一个list时使用到`[]`，比如`[1,2,3,4,5]`。它可以存储不同类型的元素。

> 如何在erlang shell输出一个变量的值？
>
> 只需要输入变量名加上点`.`，回车就可以输出变量的值；在erlang shell直接执行一个函数，也会输出函数的返回值。

### 字符串 ###

Erlang允许直接使用引号括起来的字符串，但是没有字符串这种数据类型，字符串实际上是一种整数列表(List)。在erlang shell可以做以下操作。

```erlang
1> [97, 98, 99].
"abc"
```

**字符串长度**：可以使用`erlang:length(List)`函数获得字符串的长度。

```erlang
Str="are you ok?",
erlang:length(Str).
```

**字符串拼接**：可以将两个字符串挨在一起，表示将它们拼接成同一个字符串。比如`"hello" "world"`等价于`"helloworld"`