#!C:\Strawberry\perl\bin\perl.exe -w
#use strict;
 
# + - * /
# 幂** 取余%
# 取反- 
# 省略 += -= *= /=
# 比较 <=> 返回1，0，-1
# 字符串比较 gt ge lt le eq ne cmp(返回1，0，-1)
# 逻辑 || && ！xor
# 位运算 & | ~ ^ << >>
# 自增自减 ++ --
# 字符串连接 .
# 重复 x
# 条件 ? 值1 : 值2

$str = "123";
$str = $str . "abc";

print $str . "\n";

$str = $str x 3;
print $str . "\n";

# sort
@arr = (2, 4, 1, 3);
@arr = sort{$a <=> $b} @arr;
print join(", ", @arr) . "\n";

@arr2 = ('x', 'avsdf', 'b');
@arr2 = sort{$a cmp $b} @arr2;
print join(", ", @arr2) . "\n";