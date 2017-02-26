#openGL Bitmap Function
glBitmap(width, height, x0, y0, xoffset, yOffset,bitShape)  
bitShape是数组，8bit无符号数组，每一个元素表示八个像素的0/1。从(x0,y0)

#openGL Pixmap Function
`pixmap,每一个点不是0／1表示，用很多位来表示`
glDrawPixels(width, height, dataFormat, dataType, pixMap)
##openGL的缓冲区
###分类
1. color buffer. 存的是RGB信息
2. depth buffer. 存储"object distances from viewing position". 对应的dataFormat是GL\_DEPTH_COMPONENT.
3. stencil buffer. 存储 boundary patterns for a scene. 对应的dataFormat是GL\_STENCIL_INDEX.

###color buffer有四个
color buffer由两个stereoscopic buffer(left-right ).每一个stereoscopic buffer,有一对 front-back 组成的double-buffer.