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
    gluOrtho2D(0, 50, 0, 50);
}


/**
 *  四边形
 */
void charCG()
{
    glClear(GL_COLOR_BUFFER_BIT);
    
    glColor3f(0.0, 0.0, 0.0);
    
    glRasterPos2i (10, 18);
    glutBitmapCharacter(GLUT_BITMAP_TIMES_ROMAN_10, 's');//proportionally spaced font
    glutBitmapCharacter(GLUT_BITMAP_9_BY_15, 's');//fix-width
//    glBitmap (9, 10, 0.0, 0.0, 20.0, 15.0, bitShape);
    
    glRasterPos2i(30, 30);
    glutStrokeCharacter(GLUT_STROKE_ROMAN, 's');
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
    glutDisplayFunc(charCG);
    glutMainLoop();
    
    return 0;
}