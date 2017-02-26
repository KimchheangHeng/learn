//
//  main.cpp
//  Primitives
//
//  Created by huahuahu on 11/7/15.
//  Copyright © 2015 huahuahu. All rights reserved.
//

#include <iostream>
#include <GLUT/GLUT.h>
#include <math.h>

void init()
{
    glClearColor(1.0, 1.0, 1.0, 0);
    
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluOrtho2D(0, 400, 0, 400);
}


void gldisplayCG()
{
    glClear(GL_COLOR_BUFFER_BIT);
    
    glColor3f(1.0, 0.0, 0.0);
    
    const double TWO_PI = 6.2831853;
    
    GLuint reghex;
    GLdouble theta;
    GLint x, y, k;
    reghex = glGenLists(1);
    if (glIsList(reghex))
    {
        glNewList(reghex, GL_COMPILE);
        glBegin(GL_POLYGON);
        for (k = 0; k < 6; k++)
        {
            theta = TWO_PI * k / 6.0;
            x = 200 + 150 * cos(theta);
            y = 200 + 150 * sin(theta);
            glVertex2i(x, y);
        }
        glEnd();
        glEndList();
        glCallList(reghex);
    }
    
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
    glutDisplayFunc(gldisplayCG);
    glutMainLoop();
    
    return 0;
}