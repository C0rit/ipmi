
//Cory misha matorra viera
//Comisión 2 
//legajo 123041/8
//Link del Video:https://youtu.be/_dSTf3KkCK0


PImage opart;
float cant; //Estoy declarando una variable que es cant (cantidad) de tipo flotante
float mod; //Estoy declarand una variable que es mod 
void setup() {
  size(800, 400); // Define el tamaño de la ventana
  opart = loadImage("opart.jpeg"); //Cargo la imagen
}

void draw() {
  fill(0);
  rect(400,0,800,400);
  image (opart, 0, 0, 400, 400);
  cant = 133.3;
  mod = 133.3;
  noStroke();
  
  for (int x=0; x<800; x++) {
    for (int y=0; y<400; y++) {
      
       cuadrados(x, y, cant);
       
       circulos(x, y, cant / 3);//Al estar el valor "cant" dividido 3 veces, reduce el tamaño de los circulos por lo que al pasar el mouse, los circulos no pasaran el tamaño de los cuadrados
    }
  }
}
