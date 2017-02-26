#OpenGL Fill-Area Attribute functions
1. define a fill pattern (include polygon edges)
2. invoke the polygon-fill routine
3. active the polygon-fill feature of OpenGL
4. describe the polygons to be filled

##OpenGL Fill-Pattern Function
###mask
- 32bit * 32bit
- start with the bottom row of th pattern to topmost row
- set as current fill pattern
	
		void glPolygonStipple (const GLubyte *mask)
- enable routine

		glEnable(GL_POLYGON_STRIPPLE)
##OpenGL Texture and Interpolation Pattern

1. texture. simulate surface apperance of wood, brick, brushed steel...
2. interpolation. -> realistic displays of shaded surfaces under various lighting conditions

- example.

```
glShadeModel(GL_SMOOTH);

glBegin(GL_TRIANGLES);
	glColor3f(0.0, 0.0, 1.0);
	glVertex2i(50, 50);
	glColor3f(1.0, 0.0, 0.0);
	glVertex2i(150, 150);
	glColor3f(0.0, 1.0, 0.0);
	glVertex2i(75, 150);
glEnd();
```
##OpenGL Wire-Frame Methods
	void glPolygonMode (GLenum face, GLenum mode);
- face
	1. GL_FRONT
	2. GL_BACK
	3. GL\_FRONT\_AND\_BACK
- mode
	1. GL_LINE
	2. GL_POINT
	3. GL_FILL (default)

###stitching
- definition

three-dimension polygon, method for displaying edges of a filled polygon may produce gaps along the edges.

- reason

differences between calculation in the scan-line fill algorithm and calculations in the edge-drawing algorithm.

- solution

1. shift depth values caculated by the fill routine
2. use OpenGL stencil buffer. more complicated and generally slower

###display concave polygon
spit it into a set of convex polygons, typically triangles.

1. fill region
2. show polygon vertices
3. wire-frame form


		glEdgeFlag(flag)
	
- flag	
	1. GL_FALSE. not connected to next vertex by a one-bit flag
	2. GL_TRUE. connected.
- can specified in an array

##OpenGL Front-Face Function
	glFrontFace(vertexOrder)
- vertexOrder
	1. GL_CW
	2. GL_CCW. default

