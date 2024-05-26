//Pratti, Julieta
//83917/3
//comision 5
PFont fuente;
PImage pantalla1, pantalla2, pantalla3, pantalla4;
int pantalla, tiempo, suma, mov;
boolean ultimaPantalla;
float opacidad;

void setup() {
  size(640, 480);
  fuente = loadFont("Constantia-Bold-48.vlw");
  pantalla1 = loadImage("pantalla1.jpg");
  pantalla2 = loadImage("pantalla2.jpg");
  pantalla3 = loadImage("pantalla3.jpeg");
  pantalla4 = loadImage("pantalla4.jpg");

  textFont(fuente);
  pantalla = 0;
  tiempo = 0;
  suma = 5;
  ultimaPantalla = false;
  mov = -200;
  opacidad = 0;
}
void draw() {
  println(mouseX, mouseY);

  background(0);
  imageMode(CENTER);
  textAlign(CENTER);
  rectMode(CENTER);

  if (mov < 90) {
    mov += 2;
  } else {
    mov = 90;
  }

  if (pantalla == 0) {
    image(pantalla1, width/2, height/2, 210, 280);
    fill(255, 0, 255);
    textSize(25);
    text("datos sobre:", width/2, mov);
  } else if (pantalla == 1) {
    image(pantalla2, width/2+100, height/2+50, 300, 200);
    fill(0, 0, 255, opacidad);
    textSize(20);
    text("El 6 de enero de 1854, nace el mítico detective \n Sherlock Holmes, personaje de ficción creado \n por Arthur Conan Doyle en 1887", 250, 90);
  } else if (pantalla == 2) {
    image(pantalla3, width/2, height/2, 500, 300);
    fill(0, 255, 0, opacidad);
    textSize(15);
    text("El personaje de Sherlock Holmes es uno de los más representados en la \n historia del cine y las series. Desde 1900 hasta la actualidad, se tienen registradas \n más de 250 apariciones de este famoso detective.", width/2, 40);
    fill(0, 255, 255, opacidad);
    text("Las aventuras de Sherlock Holmes es una colección de doce cuentos", width/2, 420);
  } else if (ultimaPantalla == true) {
    image(pantalla4, width/2, height/2);
    fill(255,255, 0, opacidad);
    textSize(20);
    text("Benedict Cumberbatch en la serie 'Sherlock',\n una versión contemporánea de sus historias ", width/2, 70);
    fill(255, 0, 0);
    rect(width/2, 420, 150, 50);
    fill(0);
    text("REINICIAR", width/2, 430);
  }
  if (opacidad<255) {
    opacidad += 2;
  }
  if (!ultimaPantalla) {
    tiempo +=  suma;
  }

  if (tiempo >= 800 && !ultimaPantalla) {
    tiempo = 0;
    pantalla++;
    opacidad = 0;

    if (pantalla == 3) {
      ultimaPantalla = true;
    }
  }
}
void mouseClicked() {
  if (ultimaPantalla == true) {
    if (mouseX>245&&mouseX<395&&mouseY>395&&mouseY<440) {
      pantalla = 0;
      tiempo = 0;
      suma = 5;
      ultimaPantalla = false;
      mov = -200;
    }
  }
}
