float a, b, c;

void setup(){
  size (400,200);
  background (255);
  float a= 10;
  float b= 0;
  float c= 0;
  
  float discriminante= pow (b,2) - 4*a*c;
  
  if (discriminante > 0){
    float x1 = (-b + sqrt(discriminante)) / (2*a);
    float x2 = (-b - sqrt(discriminante)) / (2*a);
    println ("las raices son: " + x1 + " y " + x2);
    } else if (discriminante == 0) {
      float x = -b / (2*a);
      println ("la raiz doble es: " + x);
      } else {
        println ("las raices son complejas");
        }
}
