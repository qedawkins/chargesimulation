#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <GL/glut.h>
#include <vector>

using namespace std;

#define WINDOW_NAME "chargesim"

class Charge
{
	private:
		float x, y, vx, vy;
		bool pos;
	public:
		float posX();
		float posY();
		float velX();
		float velY();
		void setX(float);
		void setY(float);
		void setVX(float);
		void setVY(float);
		bool charge();
		Charge(float,float,float,float,bool);
};

Charge::Charge(float x_pos,float y_pos,float x_vel,float y_vel,bool chrg) {
	x = x_pos;
	y = y_pos;
	vx = x_vel;
	vy = y_vel;
	pos = chrg;
}
bool Charge::charge() { return pos;}
float Charge::posX() { return x;}
float Charge::posY() { return y;}
float Charge::velX() { return vx;}
float Charge::velY() { return vy;}
void Charge::setX(float pos_x) { x = pos_x;}
void Charge::setY(float pos_y) { y = pos_y;}
void Charge::setVX(float vel_x) { vx = vel_x;}
void Charge::setVY(float vel_y) { vy = vel_y;}

void initCharges() {
}

void display() {
	glClearColor(0.0, 0.0, 0.0, 1.0);
	glClear(GL_COLOR_BUFFER_BIT);
	glLoadIdentity();
	gluLookAt (0.0, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0);
	glFlush();
}

int main(int argc, char** argv) {
	initCharges();
	glutInit(&argc, argv);
	glutInitDisplayMode(GLUT_DOUBLE);
	glutInitWindowSize(1440, 900);
	glutInitWindowPosition(100, 100);
	glutCreateWindow(WINDOW_NAME);
	glutDisplayFunc(display);
	glutMainLoop();
	return 0;
}
