#!C:\Strawberry\perl\bin\perl.exe -w

# \$var \@arr 取地址

# 软引用 
# 类似软链接，存储变量名字
@arr = ("hello", "world", 123);
$refer = "arr";  ## 引用变量名
print "$$refer[0]\n";
$$refer[0] = "hello-change";
print "after change: $arr[0]\n";


# 硬引用 
# 类似软链接，存储地址
@arr2 = ("hello", "world", 456);
$hard_ref = \@arr2; 
print "$$hard_ref[0]\n";
$$hard_ref[0]= "hello-change";
print "after change: $arr2[0]\n";

