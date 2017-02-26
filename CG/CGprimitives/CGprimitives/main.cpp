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
    gluOrtho2D(0, 200, 0, 150);
}

void pointcg()
{
    glClear(GL_COLOR_BUFFER_BIT);
    
    glColor3f(1.0, 0.0, 0.0);
    glBegin(GL_LINES);
    glVertex2i(50, 100);
    glVertex2i(50, 50);
    glEnd();
    
    glColor3f(1.0, 1.0, 0);
    glBegin(GL_POINTS);
    glVertex2i(50, 100);
    glVertex2i(50, 50);
    glEnd();
    
    glColor3f(0.0, 1.0, 1.0);
    GLint point1[] = {50,100};
    GLint point2[] = {100, 100};
    glBegin(GL_LINES);
    glVertex2iv(point1);
    glVertex2iv(point2);
    glEnd();
    glFlush();
}


void lineCG(void)
{
    GLfloat p1[] = {200, 70};
    GLfloat p2[] = {0,0};
    GLfloat p3[] = {100, 140};
    GLfloat p4[] = {200, 0};
    GLfloat p5[] = {0, 70};
    glClear(GL_COLOR_BUFFER_BIT);
    
    glColor3f(0, 0, 1.0);
    //    glBegin(GL_LINES);
    //    glBegin(GL_LINE_STRIP);
    glBegin(GL_LINE_LOOP);;
    glVertex2fv(p1);
    glVertex2fv(p2);
    glVertex2fv(p3);
    glVertex2fv(p4);
    glVertex2fv(p5);
    glEnd();
    glFlush();
}


int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    glutInit(&argc, const_cast<char**>(argv));
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
    glutInitWindowPosition(300, 300);
    glutInitWindowSize(300, 300);
    glutCreateWindow("primitives");
    
    init();
    glutDisplayFunc(lineCG);
    glutMainLoop();
    
    return 0;
}
