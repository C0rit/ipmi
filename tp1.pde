PImage miObjeto;

void setup(){
  size (800,400);
 miObjeto = loadImage ("muñeca.jpeg");
}

void draw(){
  image (miObjeto,0,0,400,400);
 println(mouseX + "/" + mouseY);
  background(173,170,160);
  image (miObjeto,0,0,400,400);
  noStroke();
  fill (214,172,121);
  circle(600,200,180);
  fill(191,125,172);
  rect(530,108,140,35);
  strokeWeight (5);
  stroke(#954A80);
  line (583,110,590,141);
  line (593,110,600,141);
  line (603,110,610,141);
  line (613,110,620,141);
 line(571,109,580,141);
 line(622,108,629,141);
 line(562,107,572,141);
  noStroke();
  fill(245);
  ellipse(564,202,40,60);
  ellipse(630,202,40,60);
  fill (200,0,0);
  //Pelo
  circle (598,250,10);
  fill(135,55,139);
  circle (520, 122, 30);
  circle (521, 146, 30);
  circle (493, 136, 30);
  circle (506, 168, 30);
  circle (481, 161, 30);
  circle (483, 185,30);
  circle (506,197, 30);
  circle(476,211,30);
  circle(505,223,30);
  circle(483,235,30);
  circle(511,247,30);
  circle(486,260,30);
  circle(512,272,30);
  circle(532,260,20);
  circle(500,113,20);
  circle(513,98,20);
  circle(500,149,40);
  circle(493,206,30);
  circle(496,240,30);
  circle(530,103,20);
  circle(532,116,30);
  circle(546,98,20);
  circle(538,132,20);
  circle(551,132,17);
  circle(651,101,17);
  circle(549,114,16);
  circle(526,86,17);
  fill(135,55,139);
  circle(665,98,20); //Segunda fila
  circle(659,122,30);
  circle(679,109,20);
  circle(681,127,30);
  circle(664,144,30);
  circle(687,151,30);
  circle(671,168,30);
  circle(698,173,30);
  circle(681,191,30);
  circle(682,189,30);
  circle(705,196,30);
  circle(686,216,30);
  circle(711,219,30);
  circle(693,239,30);
  circle(681,261,23);
  circle(717,240,23);
  circle(704,258,23);
  circle(704,131,23);
  circle(697,110,23);
  circle(711,149,23);
  circle(685,91,22);
  circle(718,165,22);
  circle(722,175,22);
  circle(724,191,22);
  circle(731,206,22);
  circle(732,224,22);
  circle(640,109,17);
  //Ojos
  fill(52,131,69);
 ellipse(634,186,20,30); 
 ellipse(568,189,20,30);
  
  
  
  
  
  
  
}
