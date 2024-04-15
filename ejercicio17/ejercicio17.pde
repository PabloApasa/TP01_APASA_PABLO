float x1= 100, y1= 100, x2= 200, y2= 400;
float distT= 50;
PImage imagen;
PImage tesoro;

void setup(){
  size (800,600);
  imagen= loadImage("imagen.png");
  tesoro= loadImage("cofre.jpg");
  imagen.resize (80,80);
  tesoro.resize(80,80);
}

void draw (){
  background (135, 206, 250);
  float coordenadaX= x2 - x1;
  float coordenadaY= y2 - y1;
  float dist= sqrt(pow(coordenadaX, 2) + pow(coordenadaY, 2));
  String textoDistancia= " la distancia es de; "+ dist;
  println (textoDistancia);
  
  if (dist <= distT){
    println ("Power-up activao!");
  }
  
  image (tesoro, x2, y2);
  image (imagen, x1, y1);
  
  String coordenadas= "x1: "+ mouseX +", y1: " + mouseY;
  fill (0);
  textSize (20);
  textAlign (RIGHT, TOP);
  text (coordenadas, width, 0);
}

void mouseMoved(){
  x1= mouseX;
  y1= mouseY;
}
