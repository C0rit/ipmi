//Cory misha matorra viera
//legajo: 120341/8
//Comisión 2


//Imagenes
PImage portada;
PImage pag1;
PImage pag2;
PImage pag3;
PImage pag4;
PImage pag5;
PImage pag6;
PImage pag7;
//variables
//Tatatataatta
int bajada;
int estado;
String Start;
String text1;
String text2;
String text3;
String text4;
String text5;
String text6;
String text7;
String Reiniciar; 
String textfin;
//fuente
PFont calibri48;

//codigo
void setup(){ 
  size(640,480);
frameRate(60);


//Valores
bajada = 100;
Start = "Press [z] to start";
text1 = "Error143 es una Novela visual de romance\n creada por Jenny Vi Pham,\n con una dinámica de Rivales a amantes,\n donde la historia gira en torno a\n un enfrentamiento de hackers.\n En el juego, uno de los competidores\n termina ganando y dejando al jugador/usuario en segundo lugar,\n convirtiendose en su rival,\n y en lugar de aceptar la derrota,\n el jugador decide infiltrarse en su base\n de datos y dejarle un mensaje.\n Pero, sorpresa, él te devuelve el hackeo.\n Asi comienza una serie de interacciones\n llenas de bromas y tensión romántica.\n";
text2 = "Micah Yujin: Es el interes amoroso del/la protagonsta.\n Es un hacker carismático y juguetón\n que constantemente desafía al jugador con\n su actitud confiada y sus bromas coquetas,\n pero entre más avanza el juego, nos muestran más fasetas de yujin,\n nervioso, dulce, hasta algo torpe, rompiendo esa mascara confiada.\n Uno de los aspectos más llamativos es su estilo\n de comunicación: es directo, encantador.\n Pero hasta él mismo dice que\n no quiere que los demas lo vean como un tonto que\n no se toma las cosas en serio,\n aunque de verdad es muy inteligente y amable\n";
text3 = "El juego cuenta con cinco capitulos y un DLC que se paga.\n Cada capitulo narra su conexión ademas de interactuar\n entre los protagonistas en videollamadas,\n avanzando con momentos divertidos y romanticos,\n mostrando como sus sentimientos de\n ambos se van desarrollando!\n";
text4 = "El juego te ofrece tres finales diferentes,\n uno malo, uno bueno,\n y uno escondido.\n El final bueno: Este es el final estandar del juego.\n Es cuando el/la protagonista consigue tener\n una relación buena con Micah,\n solo tienes que jugar de manera natural y\n evitando respuestas negativas, o demasiadas serias, ya que golpea\n bastante la actitud juguetona y torpe de Micah.\n Asi mismo podrias sacar el final malo:\n si respondes de manera negativa a Micah en momentos claves,\n por ej en la primera videollamada\n llega un momento donde Micah hace la broma de\n convertirse en el acosador del jugador,\n y al darse cuenta de sus palabras se pone nervioso,\n temeroso y avergonzado e intenta resolverlo con ser un\n 'acosador con consentimiento'\n y espera con una expresión dudosa la respuesta,\n el jugador tendra la opcion de reirse y seguirle el juego,\n y la otra será decirle a Micah que ese comentario es incomodo.\n Si el jugador, elige la opcion de incomodidad,\n entonces Micah se disculpara y cortara la llamada,\n y al intentar contactarlo de vuelta,\n no se podra por un hackeo de micah,\n terminando con la separación de los personajes :(\n. Mientras el final escondido se lo puede desbloquear\n en las primeras escenas donde conocemos a yujin,\n retandolo a una secuencia de hacking para demostrar quien es mejor,\n tienes que ingresar la contraseña 'Merry me' esto activa\n un final especial\n donde Micah te propone matrimonio >/3/<\n";
text5 = "Uno de los momentos más bonitos del juego son\n los dos últimos capitulos.\n Cuando Micah confiesa sus sentimientos en una\n de sus bromas pero sin perder ese cariño,\n y tambien sorprender al jugador 'Angel' con una\n canción que Micah escribio relatando\n todos sus sentimientos,\n para que luego corte la\n llamada por los nervios\n";
text6 = "Al final del juego.\n Micah decide tomar un vuelo sorpresa para ir a ver al jugador,\n apareciendo delante de su ventana;\n haciendo referencia al deseo/sueño de primera cita\n del/la protagonista/Angel.\n Y confesandose nuevamente en una preciosa declaración y un peluche.\n Llegando al final del juego";
text7 = "Fin. Gracias por leer <3";
Reiniciar = "Press [z] to restart";
estado = 0;

//Cargar fuente
calibri48 = loadFont ("Calibri-48.vlw");

//Imagenes de mi Macho :p
portada = loadImage ("portada.jpeg");
println ("portada cargada: " + portada);
pag1 = loadImage ("pag1.jpeg");
println ("pag1 cargada: " + pag1);
pag2 = loadImage ("micahYujin.jpeg");
println ("pag2 cargada: " + pag2);
pag3 = loadImage ("calendario.jpeg");
println ("pag3 cargada: " + pag3);
pag4 = loadImage ("finalMalo.jpeg");
println ("pag4: " + pag4);
pag5 = loadImage ("ca.jpeg");
println ("pag5: " + pag5);
pag6 = loadImage ("Micah.jpeg");
println ("pag6: " + pag6);
pag7 = loadImage ("pag7.jpeg");
println ("pag7: " + pag7);
}

  
  void draw (){
    println (frameCount/60);
     bajada = frameCount;
     
     //pag0
     if (estado ==0){
     image (portada, 0, 0, 640, 480);
     fill(255, 0, 0 );
     textSize( 24 );
     textAlign (CENTER);
     textFont (calibri48);
     text( Start, 320, 300);
     }
    
     
    //pag1
    if (estado == 1){
      image (pag1, 0, 0, 640, 480);
      fill (255);
      textAlign (LEFT);
      textFont (calibri48);
      textSize(20);
      text(text1,20,bajada);
      if (frameCount/60  >=8) {
    frameCount = 0;
    estado = 2;
      }
    }
    
    
     //pag2
     if (estado == 2){
     image (pag2, 0, 0, 640, 480 );
      textAlign (RIGHT);
      textFont (calibri48);
      textSize(20);
      text (text2, 628, bajada);
      if (frameCount/60 >= 10){
       frameCount = 0;
       estado = 3;
      }
     }
     
     
     //pag3
     if (estado == 3){
     image (pag3, 0, 0, 640, 480);
     textAlign (CENTER);
     textFont (calibri48);
     textSize(20);
     text (text3, 300, 480- bajada);
     if (frameCount/60 >= 10){
       frameCount = 0;
       estado = 4;
      }
     }
     
     //pag4
      if (estado == 4){
     image (pag4, 0, 0, 640, 480);
     textAlign (LEFT);
     textFont (calibri48);
     textSize(20);
     text (text4, 50, 480-bajada);
     if (frameCount/60 >= 15){
       frameCount = 0;
       estado = 5;
      }
     }
     
     //pag5
      if (estado == 5){
     image (pag5, 0, 0, 640, 480);
     fill(255);
     textAlign(LEFT);
     textFont(calibri48);
     textSize(20);
     text(text5,20,480-bajada);
     if (frameCount/60 >= 8){
       frameCount = 0;
       estado = 6;
      }
      }
     
     
     //pag6
     println ("pag6: " + pag6);
        if (estado == 6){
        image (pag6, 0, 0, 640, 480);
        fill (255);
        textAlign (LEFT);
        textFont (calibri48);
        textSize(20);
        text (text6,20,480-bajada);
        if (frameCount/60 >= 8){
          frameCount = 0;
        estado = 7;
     }
     
  }
      
  
  //pag7
 if(estado == 7){
    background(0,0,255);
    image (pag7, 0, 0, 640, 480); 
    fill(250, 0, 20);
    textSize(20);
    textAlign (CENTER);
    textFont (calibri48);
    text(text7, 300, 400);
    textSize(20);
    text(Reiniciar, 320, 450);
    }
    
    }
    
  void keyPressed(){
      if (estado == 0 && key == 'z') {
      frameCount = 1;
      estado = 1;
      }
      
      if (estado == 7 && key == 'z') {
      frameCount = 1;
      estado = 0;
      }
     
  }
