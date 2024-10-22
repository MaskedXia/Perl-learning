#!C:\Strawberry\perl\bin\perl.exe -w
#use strict;
 
$score = 60;

# if else
if ($score < 0 || $score > 100) {
    die "Invalid score. Please enter a score between 0 and 100.\n";
}
elsif ($score > 80){
    print "Grade: A\n";
}
elsif ($score >= 70){
    print "Grade: B\n";
}
else{
    print "Grade: C\n";
}

unless($score > 80){  # 与if相反
    print "The student did not pass the exam.\n";
}


# for
my @arr = (1, 2, 3, 4, 5, 6, 7, 8, 9);
my $arr_len = @arr;  # 获取个数
for(my $i = 0; $i < $arr_len; $i++){
    if($arr[$i] == 5){
        next;  # continue
    }
    if($arr[$i] == 7){
        last; # break
    }
    if($arr[$i] > 3){
        print "$arr[$i] is greater than 3\n";
    }
}

# foreach 变量 列表
foreach my $var (@arr)
{
    print "$var\t";
}
print "\n";

# 默认变量 $_
foreach (@arr)
{
    if($_ > 3)
    {
        print "$_\t";
    }
}
print "\n";

# while
my $j = 0;
while($j < 100){
    if($arr[$j] == 5){
        last;
    }
    print "$j\t";
    $j++;
}
print "\n";

# until 和 while相反
my $v = 0;
until($v > 10) # 不满足进入
{
    print "$v\t";
    $v++;
}
continue  # 增加，属于追加代码
{
    print "continue\n";
}


