#why
- 画一个正方体需要很多次调用，更别说其他更加复杂的图形了。这会要求更多的系统资源，使得程序运行很慢。写代码也很蛋疼。
-  此外，由于图形有很多共用的边和点，这些元素会被多次描述。


#怎么解决？
打开vertex array模式  	

1. 调用glEnableClientState(GL\_VERTEX_ARRAY)  
2. 使用函数glVertexPointer指定坐标和数据格式
3. 使用 glDrawElements画图
