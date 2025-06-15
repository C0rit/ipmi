void cuadrados (float x, float y, float t) {
  rectMode(CENTER);
  if ((x+y)%2==0) {
    if (key=='c') {
      fill(7, 15, 31);
    } else {
      fill(33, 52, 170);
    }
    rect (x*mod+467,y*mod+67, t, t);
  }
  else {

    if (key=='c') {
      fill(33, 52, 170);
    } else {
      fill(7, 15, 31);
    }
    rect(x*mod+467,y*mod+67, t, t);
  }
}



void circulos (float x, float y, float t) {
  if ((x+y)%2==0) {
    if (keyPressed) {
      fill(33, 52, 170);
    } else {
      fill(7, 15, 31);
    }
    circle((x*mod)+467, y*mod+67, t);
  } else {
    if (key=='c') {
      fill(7, 15, 31);
    } else {
      fill(33, 52, 170);
    }
    circle((x*mod)+467, y*mod+67, t);
  }
}

boolean mouseenObra(float x, float y){
 if (mouseX > width/2){
   return true;
 }else{
  return false;
 }
}

void keyPressed() {
  key='c';
  if (keyPressed == true){


  } // <--- ¡Esta es la llave que faltaba para cerrar el 'if' interno!
} 
