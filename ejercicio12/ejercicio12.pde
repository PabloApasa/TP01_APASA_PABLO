String teclado= " ingrese su nombre : ";
String nombre= "";
String saludo= "";

void setup(){
  size(400,200);
  println(teclado);
}

void draw(){
  background (0);
  text (saludo, 100, 100);
  textSize (32);
}

void keyPressed(){
  nombre += key;
  println (nombre);
  
  if (key == '/n'){
    saludo = "hola, " + nombre + "le damos la bienvenida";
    println (saludo);
  }
}
