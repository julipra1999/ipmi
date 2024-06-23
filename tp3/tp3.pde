//PRATTI, JULIETA EDELWEISS
//LEGAJO 83917/3
//TP3 COM5
//https://youtu.be/elZ8_BN-n6M?si=wKj_KdV2f1kCu7-k

PImage OpArt;
int circulos = 90;
float radioGrande, radioChico;
float ajusteAngulo = 0;
boolean mover = false;
float distanciaInicial;
float aumento = 1.0;

void setup() {
  size(800, 400);
  OpArt = loadImage("opart.jpeg");
  radioGrande = width * 0.2;
  radioChico = radioGrande / 4;
  distanciaInicial = dist(mouseX, mouseY, 600, 200); //guarda la distancia inicial para reiniciar
}

void draw() {
  background(255);
  image(OpArt, 0, 0, 400, 400);
  ellipse(600, 200, radioGrande * 2 * aumento, radioGrande * 2 * aumento); // aumento circulo grande
  mover = verificarMouse();
  dibujarCirculosEnRadios();
  fill(255);
  ellipse(600, 200, 40 * aumento, 40 * aumento); // aumento circulo del medio

  if (keyPressed && key == 'r') {//reinicio
    reiniciarPrograma();
  }
}

boolean verificarMouse() {//verificacion del mouse
  float distanciaMouse = dist(mouseX, mouseY, 600, 200);
  if (distanciaMouse < radioGrande * aumento / 2) {
    ajusteAngulo += 0.01;
    return true;
  } else {
    return false;
  }
}

void dibujarCirculosEnRadios() {
  for (int j = 1; j <= 4; j++) {
    for (int i = 0; i < circulos; i++) {//calculo de los radios para dibujar los circulos chicos
      float angulo = TWO_PI / circulos * i + (mover ? (j % 2 == 0 ? ajusteAngulo : -ajusteAngulo) : 0);

      pushMatrix();
      translate(600, 200);
      rotate(angulo);
      translate((radioGrande - j * radioChico) * aumento, 0);
      float borde = 1.5 / j; // se ajusta el grosor del borde según el tamaño de los círculos
      strokeWeight(borde);
      stroke(255);
      fill(i % 2 == 0 ? color(255, 100, 50) : color(0));
      ellipse(0, 0, radioChico * 2 * aumento, radioChico * aumento);
      popMatrix();
    }
  }
}
void reiniciarPrograma() {
  ajusteAngulo = 0;
  aumento = 1.0;
}
void mousePressed() {
  if (verificarMouse()) {
    aumentarEscala(1.1); //aumenta el tamaño al hacer clic
  }
}
void aumentarEscala(float incremento) {//funcion que retorna valor
  aumento *= incremento;
}
float obtenerAumento() {
  return aumento;
}
