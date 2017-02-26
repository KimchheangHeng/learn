#OpenGL Antialiasing Functions
##definition
- aliasing: distortion of information due to low-frequency sampling(under-sampling). (jagged, stair-step apperance)
- antialiasing: compensate for the undersamping process.

##enable
```
extern void glEnable (GLenum cap);
```
- cap == GL_POINT_SMOOTH
- cap == GL_LINE_SMOOTH
- cap == GL_POLYGON_SMOOTH

###enable color-blending operation
	glEnable(GL_BLEND)
	extern void glBlendFunc (GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
使用color tables需要首先创建color ramp, 才能使用antialiasing

