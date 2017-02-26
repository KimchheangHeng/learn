#OpenGL Display Lists
类似于宏定义

##定义方法
glNewList(listID, listMode)  
.  
.  
.  
glEndList()
 
`如果list中有变量的话，存储的是变量的值，如果以后变量改变，list的操作不会变化`
##listID获取方法
listID  = glGenLists(1)
##判断一个数是不是合法listID
`glIsList(ListID)`
## 执行list
- `glCallList(listID)`
- `glListBase(offsetValue)` + `glCallLists(nLists, arrayDataValue, listIDArray)`

##删除list
	glDeleteLists(startID, nLists);
