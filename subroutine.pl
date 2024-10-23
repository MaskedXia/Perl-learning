#!C:\Strawberry\perl\bin\perl.exe -w
#use strict;

sub test;

# & 代表子程序，&可省略
&test();

sub test
{
    print "this is a test\n";
}


sub add
{
    @arr = @_; # 全部入参，深拷贝
    $sum = 0;
    foreach my $num (@arr)
    {
        $sum += $num;
    }
    #@arr[1] = 100;
    return $sum;
}

$sum = add(1, 2, 3, 4, 5, 6, 7, 8, 9);
print "sum: $sum\n";

$sum2 = add 1, 2, 3, 4, 5, 6, 7, 8, 9;
print "sum2: $sum2\n";

@arr2 = (1, 2, 3, 4, 5, 6, 7, 8, 9);
$sum3 = add(@arr2);
print "sum3: $sum3\n";
print "arr2: @arr2\n";

sub add2
{
    my ($num1, $num2, $num3, $num4) = @_;
    $num1 = $num1 + 1;
    $num2 = $num2 + 1;
    $num3 = $num3 + 1;
    $num4 = $num4 + 1;
    return $num1 + $num2 + $num3 + $num4;
}

my $v1 = $v2 = $v3 = $v4 = 1;
print "$v1 $v2 $v3 $v4\n";

my $sum3 = add2($v1, $v2, $v3, $v4);
print "$sum3\n";
print "$v1 $v2 $v3 $v4\n"; # 不变

# 传引用，效率更高
sub add3
{
    my ($ref) = @_;
    @$ref[1] = 100;
}

my @arr3 = (1, 2, 3, 4, 5, 6, 7, 8, 9);

add3(\@arr3);
print "@arr3\n";

