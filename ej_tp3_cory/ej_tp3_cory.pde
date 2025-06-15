//Presiona la "c" y "v"
//Cory misha matorra viera
//Comisión 2 
//legajo 123041/8

PImage opart;
float cant;
float mod;
int giro;
void setup() {
  size(800, 400);
  opart = loadImage("opart.jpeg");
}

void draw() {
  fill(0);
  rect(400,0,800,400);
  image (opart, 0, 0, 400, 400);
  cant = 133.3;
  mod = 133.3;
  giro++;
  noStroke();
  
  for (int x=0; x<800; x++) {
    for (int y=0; y<400; y++) {
      
       cuadrados(x, y, cant);
       
       circulos(x, y, cant);
    }
  }
}
