//Alumnx: Cory misha matorra viera
//Legajo: 12341/8 
//Comision 2
//Recuperatorio del Tp3
//No pude hacer el video, se me desconfiguro toda la computadora (No se que se le metio) y tuve que hacerla por una prestada(Cualquier duda, tengo los videos donde muestro como se desconfiguro la compu de un momento a otro)




PImage img;
color circleColor = color(255, 0, 0); 
float zoom = 1.0; 
float centerX, centerY;

void setup() {
  size(800, 400);
  img = loadImageWithPath("F_51.jpg");
  background(127, 255, 127); 
  noFill();
  centerX = width - 200;
  centerY = height / 2;
}

void draw() {
  background(127, 255, 127); 
  image(img, 0, 0, 400, 400);
  stroke(circleColor);
  for (int i = 0; i < 10; i++) {
    float diameter = map(i, 0, 9, 100, 400) * zoom; // Aumenta el tamaño del elipse con el zoom
    ellipse(centerX, centerY, diameter, diameter); // Mueve el elipse basado en el zoom
  }
}

void keyPressed() {
  if (key == 'r') {
    changeCircleColor(255, 0, 0); 
  } else if (key == 'g') {
    changeCircleColor(0, 255, 0);
  } else if (key == 'b') {
    changeCircleColor(0, 0, 255); 
  } else if (key == ' ') {
    resetSketch(); 
  } else if (key == '+') {
    zoom += 0.1;
  } else if (key == '-') {
    zoom -= 0.1;
  }
  zoom = constrain(zoom, 0.5, 2.0);
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  zoom += e * 0.05;
  zoom = constrain(zoom, 0.5, 2.0); 
}

void mousePressed() {
  centerX = mouseX;
  centerY = mouseY;
}

void mouseMoved() {
  if (dist(mouseX, mouseY, centerX, centerY) < 200 * zoom) {
    changeCircleColor(255, 255, 0); // Cambia a amarillo cuando el ratón está sobre los círculos
  } else {
    changeCircleColor(255, 0, 0); // Vuelve al color original
  }
}

void resetSketch() {
  changeCircleColor(255, 0, 0); 
  background(127, 255, 127);
  img = loadImageWithPath("F_51.jpg"); 
  zoom = 1.0; 
  centerX = width - 200;
  centerY = height / 2;
}

// Función que NO retorna un valor
void changeCircleColor(int r, int g, int b) {
  circleColor = color(r, g, b);
}

// Función que RETORNA un valor
PImage loadImageWithPath(String path) {
  return loadImage(path);
}
