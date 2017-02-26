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
    gluOrtho2D(0, 200, 0, 200);
}

void rectGL()
{
    glClear(GL_COLOR_BUFFER_BIT);
    
    glColor3f(1.0, 0.0, 0.0);
    glRectd(30, 30, 100, 100);
    
    glColor3f(1.0, 1.0, 0.0);

    GLfloat v1[] = {130.0,150.0};
    GLfloat v2[] = {90, 90};
    glRectfv(v1, v2);
    glFlush();
}

void polygonCG()
{
    glClear(GL_COLOR_BUFFER_BIT);
    
    glColor3f(1.0, 0.0, 0.0);
    GLfloat p1[] = {0,100};
    GLfloat p2[] = {50,0};
    GLfloat p3[] = {150, 0};
    GLfloat p4[] = {200, 100};
    GLfloat p5[] = {150, 200};
    GLfloat p6[] = {50, 200};
    
//    glBegin(GL_POLYGON);
//    glVertex2fv(p1);
//    glVertex2fv(p2);
//    glVertex2fv(p3);
//    glVertex2fv(p4);
//    glVertex2fv(p5);
//    glVertex2fv(p6);
//    glEnd();
    
//    glBegin(GL_TRIANGLES);
//    glVertex2fv(p1);
//    glVertex2fv(p2);
//    glVertex2fv(p6);
//    glVertex2fv(p3);
//    glVertex2fv(p5);
//    glVertex2fv(p4);
//    glEnd();
    
//        glBegin(GL_TRIANGLE_STRIP);
//        glVertex2fv(p1);
//        glVertex2fv(p2);
//        glVertex2fv(p6);
//        glVertex2fv(p3);
//        glVertex2fv(p5);
//        glVertex2fv(p4);
//        glEnd();

    glBegin(GL_TRIANGLE_FAN);
    glVertex2fv(p1);
    glVertex2fv(p2);
    glVertex2fv(p3);
    glVertex2fv(p4);
    glVertex2fv(p5);
    glVertex2fv(p6);
    glEnd();
    
    glFlush();

}

/**
 *  四边形
 */
void quarCG()
{
    glClear(GL_COLOR_BUFFER_BIT);
    
    glColor3f(1.0, 0.0, 0.0);
    GLfloat p1[] = {0,200};
    GLfloat p2[] = {30,0};
    GLfloat p3[] = {60, 0};
    GLfloat p4[] = {50, 100};
    GLfloat p5[] = {130, 120};
    GLfloat p6[] = {150, 30};
    GLfloat p7[] = {200, 0};
    GLfloat p8[] = {180, 190};
    
//    glBegin(GL_QUADS);
//    glVertex2fv(p1);
//    glVertex2fv(p2);
//    glVertex2fv(p3);
//    glVertex2fv(p4);
//    glVertex2fv(p5);
//    glVertex2fv(p6);
//    glVertex2fv(p7);
//    glVertex2fv(p8);
//    glEnd();
    
    glBegin(GL_QUAD_STRIP);
    glVertex2fv(p1);
    glVertex2fv(p2);
    glVertex2fv(p4);
    glVertex2fv(p3);
    glVertex2fv(p5);
    glVertex2fv(p6);
    glVertex2fv(p8);
    glVertex2fv(p7);
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
    glutCreateWindow("polygon");
    
    init();
//    glutDisplayFunc(rectGL);
//    glutDisplayFunc(polygonCG);
    glutDisplayFunc(quarCG);
    glutMainLoop();
    
    return 0;
}