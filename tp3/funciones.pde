void cuadrados (float x, float y, float t) {
  rectMode(CENTER);//Configura el modo de dibujo de rectangulos para que las coordenadas (x,y) sean el centro del rectangulo
  if ((x+y)%2==0) { //numero par y patron de ajedrez
    if (keyPressed) {//presionar tecla
      fill(7, 15, 31);//color azul Os
    } else { 
      fill(33, 52, 170);//color azul medio
    }
    rect (x*mod+467,y*mod+67, t, t); 
  }
  else {//numero impar

    if (keyPressed) {//tecla
      fill(33, 52, 170);//Azul medio
    } else {
      fill(7, 15, 31);//Azul os
    }
    rect(x*mod+467,y*mod+67, t, t); //se invierten los colores
  }
}

void circulos (float x, float y, float t) {//Lo mismo aqui. Solo que estan conn los colores invertidos
  if ((x+y)%2==0) {//tablero ajedrez
    if (keyPressed) {
      fill(33, 52, 170);
    } else {
      fill(7, 15, 31);
    }
    circle((x* mod)+467, y*mod+67, t);
  } else {
    if (keyPressed) {
      fill(7, 15, 31);
    } else {
      fill(33, 52, 170);
    }
    circle((x* mod)+467, y* mod+67, t);
  }
  //interaccion 
  if (sobreObra()){ //Si el mouse esta sobre la obra
          float d = dist(mouseX, mouseY, x* mod+467, y* mod+67);//d calcula la distancia entre el mouse, y el tamaño de pantalla
          float tam = map( d, 0, 565, mod/2, mod*2-100);//si "d" es 565, tam sera mod*-100
          circle(x* mod+467, y* mod+67, tam);//Nuevo circulo con tam calculado
         }else {
          circle (x* mod+467, y* mod+67, t*3);//Como en la primera pagina el tamaño del circulo esta dividido por 3, acá se le multiplicara por 3 para que no haya modificación alguna. Asi mismo el circulo solo se hara mas chico si el mouse esta sobre la obra.
         }
}


boolean sobreObra(){  
  if( mouseX > width/2 ){//Si mouseX es mayor que la mitad del ancho, se retornara un valor verdadero, sino retornara un valor falso
    return true;
  }
  else{
    return false;
  }
}
  

  
  
  
  
  
  
  
  
