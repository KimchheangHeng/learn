//
//  main.cpp
//  CGLineAttribuite
//
//  Created by huahuahu on 11/24/15.
//  Copyright © 2015 huahuahu. All rights reserved.
//


#include <iostream>
#include <GLUT/GLUT.h>
typedef struct{
    float x, y;
} wcPt2D;

void init()
{
    glClearColor(1.0, 1.0, 1.0, 0);
    
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluOrtho2D(0, 300, 0, 300);
}

void linePlot(wcPt2D dataPts[5])
{
    int k;
    glBegin(GL_LINE_STRIP);
    for (k = 0; k < 5; k++)
    {
        glVertex2f(dataPts[k].x, dataPts[k].y);
    }
    glEnd();
    glFlush();

    
}


void lineCG(void)
{
    glClear(GL_COLOR_BUFFER_BIT);
    
    glColor3f(1.0, 0, 0);
    glEnable(GL_LINE_STIPPLE);
    wcPt2D dataPts[5] = {{0.0, 20.0},{60.0, 50.0},{100.0, 100.0},{ 200.0, 200.0},{250.0, 290.0}};
    
    glLineStipple(1, 0x1c47);
    linePlot(dataPts);
    
    dataPts[0] = {20,30};
    dataPts[1] = {50, 200};
    dataPts[2] = {190, 170};
    dataPts[3] = {230, 100};
    dataPts[4] = {270, 250};
    glColor3f(1.0, 0, 1.0);
    glLineStipple(1, 0x00ff);
    glLineWidth(2);
    linePlot(dataPts);
    
    dataPts[0] = {100, 200};
    dataPts[1] = {130, 30};
    dataPts[2] = {180, 50};
    dataPts[3] = {200, 30};
    dataPts[4] = {230, 200};
    glColor3f(0, 0, 1);
    glLineStipple(1, 0x0101);
    glLineWidth(3);
    linePlot(dataPts);
    glDisable(GL_LINE_STIPPLE);
    
    
    glShadeModel(GL_SMOOTH);
    glBegin(GL_LINES);
    glColor3f(0.0, 0.0, 1.0);
    glVertex2f(50, 50);
    glColor3f(1.0, 0.0, 0.0);
    glVertex2f(250, 200);
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
    glutCreateWindow("line Attribute");
    
    init();
    glutDisplayFunc(lineCG);
    glutMainLoop();
    
    return 0;
}
