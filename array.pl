#!C:\Strawberry\perl\bin\perl.exe -w
#use strict;
 
# 数组
# @符号标识

my @numbers = (1, 2, 3, 4, 5);
# my @numbers2 = (1, 2..5); #范围操作符

# 输出
print "Array elements:\n";
foreach my $num (@numbers) {
    print "$num\t";
}
print "\n";

# qw(str1, str2, str3) ## 可以空格、制表、换行作为间隔符
my @strings = qw(apple banana orange);
print "Array elements:\n";
foreach my $str (@strings) {
    print "$str\t";
}
print "\n";

# pop push 弹出和添加

my @arr = (1, 2, 3, 4, 5);
my $popped = pop @arr;
print "popped element: $popped\n";
push @arr, 6;
print "Array elements:\n";
foreach my $str (@arr) {
    print "$str\t";
}
print "\n";


# shift 取出最左边的元素
# unshift 添加一个元素到数组的前端

my @arr2 = (1, 2, 3, 4, 5);
my $shifted = shift @arr2;
print "shifted element: $shifted\n";
unshift @arr2, (0, 0, 0);
print "Array elements:\n";
foreach my $str (@arr2) {
    print "$str\t";
}
print "\n";

# 索引下标访问和修改[]
my @arr3 = (1, 2, 3, 4, 5);
print "Element at index 2: $arr3[2]\n";
$arr3[2] = 10;
print "after change, element at index 2: $arr3[2]\n";

# $#arr 代表最后元素的索引值，或者索引-1
print "Last index: $#arr3\n";
print "Last element: $arr3[$#arr3]\n";

# 数组排序
my @arr4 = (5, 2, 3, 1, 4);
print "Before sorting:\n";
foreach my $num (@arr4) {
    print "$num\t";
}
print "\n";

@arr4 = sort @arr4;

print "After sorting:\n";
foreach my $num (@arr4) {
    print "$num\t";
}


