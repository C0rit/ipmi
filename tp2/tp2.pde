//Nombre: Cory misha matorra viera 
//legajo: 120341/8
//Comision 2
PImage pantalla1;
PImage pantalla2;
PImage pantalla3;
String frisk;
float tamaño; 
int alpha;
float x, y;

//boton final
int esquinaX1 = 320;
int esquinaY1 = 420;
int ancho = 100;
int alto = 30;

void setup(){
  size(640, 480);
  pantalla1 = loadImage("undertale.jpg");
  pantalla2 = loadImage("undertale2.jpg");
  pantalla3 = loadImage("Undertale44.jpg"); 
  
  x = width / 3;
  y = height / 3;
  alpha = 0;
  tamaño = 14; 
  frisk = "pantalla1"; 
}

void draw(){
  background(255); 

  // Pantalla 1
  if(frisk.equals("pantalla1")) {
    image(pantalla1, 0, 0);
    if(tamaño < 30) {
      tamaño += 0.06;
    }
    textSize(tamaño);
    fill(255);
    text("UNDERTALE", 200, 50);
    if(frameCount == 440) {
      frisk = "pantalla2"; 
      tamaño = 14; 
    }
  }
  
  // Pantalla 2
  else if(frisk.equals("pantalla2")) {
    image(pantalla2, 0, 0);
    if(tamaño < 20) {
      tamaño += 0.05;
    }
    textSize(tamaño);
    fill(255);
    
   
    
    text("Undertale es un videojuego del 2015 creado por toby fox \n. La historia de Undertale toma lugar en el subsuelo\n , un reino en el que los monstruos fueron desterrados despues de que \n la guerra magica con el unico punto de entrada en el monte Ebott \n. El juego empieza con un niño llamado frisk que se ha caido al subsuelo \n , debe encontrar el camino de regreso a la superficie, \n a medida que avanza se va encontrando con nuevos desafios \n y nuevos personajes \n, con algunos tendra que combatir \n y el jugador tendra la opcion de matarlos o perdonalos \n el cual la eleccion que tome afectara al juego \n. Durante su viaje, se aprende la causa de la \n guerra entre los humanos y los monstruos \n .El juego termina de diferentes maneras dependiendo\n de las decisiones del jugador\n", 50, 100); 
    if(frameCount == 880) {
      frisk = "pantalla3"; 
      tamaño = 20; 
     
      
    }
  }
  
  // Pantalla 3
  else if(frisk.equals("pantalla3")) {
    image(pantalla3, 0, 0);
    if(tamaño < 23) {
      tamaño += 0.06;
    }
    textSize(tamaño);
    fill(255);
    text("Si llegamos a explicar un poco mejor los finales se dividen en varios \n, dependiendo las decisiones del jugador y lleve el curso de la historia, \n la ruta neutral la mas sencilla, \n el jugador puede crear su propia historia, sin ningun patron \n, puede matar o perdonarlos, mientras la ruta pacifista\n siempre se perdona a los montruos y \n se busca la paz sin lastimar a otros. \n En cambio la ruta genocidad es matar sin piedad \n y no dejar ningun montruo vivo \n, cada accion que tomes cambiara el destino del juego \n", 50, 100);
    // Botón final
    fill(255);
    rect(esquinaX1, esquinaY1, ancho, alto);
    fill(0);
    text("reiniciar", 325, 440); 
   
    
    
    if(mouseX >= esquinaX1 && mouseX <= esquinaX1 + ancho && mouseY >= esquinaY1 && mouseY <= esquinaY1 + alto && mousePressed) {
     
      frisk = "pantalla1"; 
      tamaño = 20; 
      frameCount = 0; 
           
      
      
      
    }
  }
}
