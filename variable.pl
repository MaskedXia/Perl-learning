#!C:\Strawberry\perl\bin\perl.exe -w
#use strict;
 
# 标量
# 数字标量，全部是双精度浮点数，较长可以使用下划线分开
# 字符串标量，既可以是单引号也可以双引号

# 全局变量
# my 只有本层可以看到
# local 本层和下层可以看到

$test1 = "test1";
$flag = 1;
if ($flag == 1) {
    my $test2 = "test2";
    printf("1: %s\n", $test1);
    printf("1: %s\n", $test2);
}

printf("2: %s\n",$test1);
printf("2: %s\n",$test2);

printf("##################\n");

sub g_print{
    print "$x\n";
}

sub test_my{
    my $x = 11;
    print "call-my $x\n";
    g_print;
}

sub test_local{
    local $x = 22;
    print "call-local $x\n";
    g_print;
}

$x = 0;
test_my;
test_local;
print $x;