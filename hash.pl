#!C:\Strawberry\perl\bin\perl.exe -w
#use strict;

%Hash_A = ("x" => "111", "y" => "222", "z" => "333");

foreach my $key (sort keys %Hash_A) {
    print "$key => $Hash_A{$key}\n";
}

# 多层hash
%Hash_B = (
    "fruits" => {
        "apple" => "red1",
        "banana" => "yellow2",
        "orancge" => "orange3"
    },
    "books" => {
        "book1" => "Author1",
        "book2" => "Author2",
        "book3" => "Author3"
    }
);

foreach my $key (sort keys %Hash_B) {
    print "Hash_B: $key => $Hash_B{$key}\n";
}

print "$Hash_B{fruits}{orancge}\n";

# 删除和赋值
# delete($Hash_B{'fruits'}{'orancge'});
$Hash_B{fruits}{orancge} = "orancge99";
print "$Hash_B{fruits}{orancge}\n";

# 切片
@arr = @Hash_A{"x", "y"};
print "@arr\n";

# 合并
%Hash_C = (%Hash_A, %Hash_B);
foreach my $key (sort keys %Hash_C) {
    print "Hash_C: $key => $Hash_C{$key}\n";
}

# 哈希函数
# exist 是否存在键值
%Hash_D = ("x" => "111", "y" => "222", "z" => "333");
$flag = exists $Hash_D{"x"};
print "$flag\n";  # 1

# each 获取键值，类似迭代器
while(@arr_D = each(%Hash_D)){
    print "@arr_D\n";
}

# reverse 键和值反转
%Hash_E = reverse %Hash_D;
foreach my $key (sort keys %Hash_E) {
    print "Hash_E: $key => $Hash_E{$key}\n";
}

# keys values 返回键和值
foreach my $value (sort values %Hash_E) {
    print "Hash_E: $value\n";
}

# 长度 使用keys
$len_E = keys %Hash_E; 
print "$len_E\n";

# 排序 sort
foreach my $key (sort{$b cmp $a} keys %Hash_E) { # 从大到小
    print "Hash_E: $key => $Hash_E{$key}\n";
}

# 引用
$href = \%Hash_E;
foreach my $key (sort keys %$href) {
    print "href: $key => $href->{$key}\n";
    # print "href: $key => $$href{$key}\n"; #相同
}

