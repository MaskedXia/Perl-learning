#!C:\Strawberry\perl\bin\perl.exe -w
#use strict;

# 句柄 文件描述符

# STDIN STDOUT STDERR
# print "pls input data\n";
# my $input = <STDIN>;
# print "input data is $input\n";

# $!错误信息
$fh = open(MYFILE, "test.txt") or die "error: $!\n";
print "$fh\n";
$i = 0;
while($line = <MYFILE>) # <>每次读一行  @line = <MYFILE> 可以用数组
{
    print "$line";
    if($i > 3){
        last;
    }
    $i++;
}  
# 关闭句柄
close(MYFILE);

# 写入 print WFILE "abc";
open(WFILE, ">test.txt"); # 改写
print WFILE "abc";
close(WFILE);

open(WFILE, ">>test.txt"); # 追加
print WFILE "\nabcd";
close(WFILE);

# -r 可读取
# -w 可写入
# -e 存在
# -z 是否是空的
# -s 大小

if(-r "test.txt"){
    print "file is readable\n";
}

if(-w "test.txt"){
    print "file is writable\n";
}

if(-e "test.txt"){
    print "file is exists\n";
}

if(-z "test.txt"){
    print "file is empty\n";
}

if(-s "test.txt"){
    print -s "test.txt";
}