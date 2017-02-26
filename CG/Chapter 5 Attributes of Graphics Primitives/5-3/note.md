#OpenGL Color Functions
##Color Modes
- GLUT_INDEX: color table模式，基本不用了
- GLUT_RGB: RGB模式
- GLUT_RGBA: 加入了alpha coefficent, 用且只用在color blending时。

使用`glColor*(colorComponents)`来设定当前的颜色。
在OpenGL内部，是使用浮点数来表达RGB的。当使用整型时，会被归一化为浮点数。对于范围比较大的类型，较小的改变难以察觉。因此，常用的是浮点数格式和较小的整型。如byte。
##OpenGL Color Blending
###Switch
	glEnable(GL_BLEND)
	glDisable(GL_BLEND)
###选择blending-factor 
	glBlendFunc(sFactor, dFactor)
常见参数  

- GL\_ZERO
- GL\_ONE
- GL\_DST\_ALPHA
- GL\_SRC\_ALPHA
- GL\_ONE\_MINUS\_DST\_ALPAH
- GL\_ONE\_MINUS\_SRC\_ALPHA
- GL\_DST\_COLOR
- GL\_SRC\_COLOR 	

##OpenGL Color Arrays
###Switch
	glEnableClientState(GL_COLOR_ARRAY)
###usage
	glColorPointer(nColorComponents, dataTypes, offset, colorArray)
	
	glInterleavedArrays (GLenum format, GLsizei stride, const GLvoid *pointer)
##other OpenGL Color Functions
设置窗口的颜色  

	glClearColor (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)
将设置的颜色刷进缓冲区
	
	glclear(GL_COLOR_BUFFER_BIT)

