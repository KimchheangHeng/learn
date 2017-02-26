//
//  main.cpp
//  Primitives
//
//  Created by huahuahu on 11/7/15.
//  Copyright © 2015 huahuahu. All rights reserved.
//

#include <iostream>
#include <GLUT/GLUT.h>

void init()
{
    glClearColor(1.0, 1.0, 1.0, 0);
    
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluOrtho2D(0, 20, 0, 20);
}


/**
 *  四边形
 */
void bitmapCG()
{
    glClear(GL_COLOR_BUFFER_BIT);
    
    glColor3f(1.0, 0.0, 0.0);
    
    GLubyte bitShape [20] = {
        0x1c, 0x00, 0x1c, 0x00, 0x1c, 0x00, 0x1c, 0x00, 0x1c, 0x00,
        0xff, 0x80, 0x7f, 0x00, 0x3e, 0x00, 0x1c, 0x00, 0x08, 0x00};
    
    glPixelStorei (GL_UNPACK_ALIGNMENT, 1);  // Set pixel storage mode.
    
    glRasterPos2i (10, 18);
    glBitmap (9, 10, 0.0, 0.0, 20.0, 15.0, bitShape);
    
    glFlush();
    
}

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    glutInit(&argc, const_cast<char**>(argv));
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
    glutInitWindowPosition(300, 300);
    glutInitWindowSize(300, 300);
    glutCreateWindow("polygon");
    
    init();
    //    glutDisplayFunc(rectGL);
    //    glutDisplayFunc(polygonCG);
    glutDisplayFunc(bitmapCG);
    glutMainLoop();
    
    return 0;
}