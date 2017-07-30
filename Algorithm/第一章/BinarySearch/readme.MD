# 二分查找法  

## 程序说明  
	接受一个白名单文件（一列整数）作为参数，并过滤掉标准输入中的所有存在于白名单中的条目，仅将不在白名单上的整数打印到标准输出中。
## 适用 swift 版本 

	BinarySearch(master*)$ swift --version
	Apple Swift version 3.1 (swiftlang-802.0.53 clang-802.0.42)
	Target: x86_64-apple-macosx10.9
	
## 使用方法  

1. checkout下来 
2. 运行 `swift build`，得到可执行文件
3. 运行 `.build/debug/BinarySearch tinyW.txt < tinyT.txt`   

## 输出  

	[10, 11, 12, 16, 18, 23, 29, 33, 48, 54, 57, 68, 77, 84, 98]
	50
	99
	13
	
先打印出来白名单，然后打印出不在白名单上的整数。