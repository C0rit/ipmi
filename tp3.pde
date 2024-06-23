// circulos que al tocarlos se hacen mas y mas
//Alumna: Cory misha matorra viera
//legajo: 120341/8
//comision 2
//Estado: para recuperatorio, no pude llegar a hacerlo totalmente por el tiempo y quisiera ir para recuperatorio. Asi que entrego esto para poder ir


float[] circleX;
float[] circleY;
float[] circleRadius;
int numCircles = 10;

void setup() {
  size(800, 600);
  background(255);
  noFill();
  stroke(0);
  
  
  circleX = new float[numCircles];
  circleY = new float[numCircles];
  circleRadius = new float[numCircles];
  
  for (int i = 0; i < numCircles; i++) {
    circleX[i] = random(width);
    circleY[i] = random(height);
    circleRadius[i] = 20 + i * 20;
  }
}

void draw() {
  for (int i = 0; i < numCircles; i++) {
    ellipse(circleX[i], circleY[i], circleRadius[i], circleRadius[i]);
  }
}

void mousePressed() {
  // Cambia el tamaño del círculo más cercano al clic del mouse
  float minDistance = dist(mouseX, mouseY, circleX[0], circleY[0]);
  int closestCircle = 0;
  
  for (int i = 1; i < numCircles; i++) {
    float d = dist(mouseX, mouseY, circleX[i], circleY[i]);
    if (d < minDistance) {
      minDistance = d;
      closestCircle = i;
    }
  }
  
 
  circleRadius[closestCircle] += 10;
}
