#!C:\Strawberry\perl\bin\perl.exe -w
#use strict;
 

# 简单模式 $_
$_ = "hello world";
if (/world/i) {
    print "Found 'world' in the string\n";
}
# \p{Space} \p{Hex} \p{Digit} 
# \P{Space} \P表示包含不匹配
if (/\p{Space}/i) {  # 匹配空格或换行
    print "Found space in the string\n";
}

# 模式分组
# worldddd +是0或无数次
if (/world+/) {  # 匹配空格或换行
    print "world+ matched\n";
}
# worldworldworld
if (/(world)+/) { 
    print "(world)+ matched\n";
}

# 重复一次 worldworld
if (/(world)\1/) {  
    print "(world)\n";
}

# 或 | 
if (/world|worcd/) {  
    print "world or worcd\n";
}
if (/hello (|my)world/) {  
    print "hello (|my)world\n";
}

# 元字符

# 匹配一组字符
# [a-z] [A-Z] [0-9] [a-zA-Z0-9]
# [^a-z] [^A-Z] [^0-9] [^a-zA-Z0-9]

# \d \D 数字
# \w \W 数字型字符
# \s \S 空白字符（制表符和换行符）
# \b \B 字边界
# ^ $ 行首 行尾
# \A \Z \z 字符串开始 末尾
# \G \g

# ? 0-1
# * 0-无数
# + 1-无数
# x(m,n) m到n个x

# . 任意字符


# 模式匹配
$test = "Perl test 25.11";

if ($test =~ /-?(\d+)\.?(\d+)/) {
    $integer = $1;
    $decimal = $2;
    print "Integer part: $integer\n";
    print "Decimal part: $decimal\n";
    print "$0\n"
}
# g 所有匹配
# i 忽略大小写
# m 多行
# s 单行
# x 忽略空白
@matches = "balata" =~ /.a/g;
foreach my $match (@matches) {
    print "$match\n";
}

@matches2 = "balata" =~ /.a/;
foreach my $match (@matches2) {
    print "$match\n";
}

# 模式替换 s///
# e 作为表达式

$var = "0anc1";
$var =~ s/[a-zA-Z]+/3*2/e;
print "$var\n";

$var2 = "0anc1";
$var2 =~ s/[a-zA-Z]+/3*2/;
print "$var2\n";

# 模式转化
# tr//
# c 未匹配替换
# d 匹配删除
# s 多个相同字符缩成一个

$test = "abcabac";
$res = $test =~ tr/abc/def/; # 单个一个个替换

print "$test\n";
print "$res\n";  # 替换的个数

# ?: 匹配但不获取匹配结果  $1为空
# ?= 正向预查 （?=95|98|XP|7)
# ?! 负向预查 与上相反
