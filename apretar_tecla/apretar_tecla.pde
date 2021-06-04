PImage cero, uno, dos, tres, cuatro, cinco, seis, siete, izquierdo, derecho;
PFont  titulo, autor, personajes, musica, direccion ;
int nfoto;
float posX, posY, velocidad=50;
boolean suma1 = false, resta1= false, kp=false;

void setup() { 
size (500,500);
 
cero = loadImage ("0.jpg");

 uno = loadImage ("1.png");
 
 dos = loadImage ("2.jpg");
 
 tres = loadImage ("3.jpg");
 
 cuatro = loadImage ("4.jpg");
 
 cinco = loadImage ("5.jpg");

 seis=  loadImage ("6.jpg");
 
siete = loadImage ("7.jpg");
izquierdo= loadImage("izquierdo.jpg");

derecho= loadImage ("derecho.jpg");

titulo= loadFont("ArialMT-48.vlw");
autor= loadFont("ArialNarrow-48.vlw");
personajes= loadFont ("ArialNarrow-48.vlw");
musica= loadFont ("Gautami-Bold-48.vlw");
direccion= loadFont ("TimesNewRomanPSMT-48.vlw");}


void draw (){
  
  background(204);
  if (nfoto==0){
  image (cero, 0, 0); 
cero.resize(500,500);
fill (#F716DE);
if (posY<500 && posX>=0){
textSize (100);
textFont (titulo, 80);
text ("HEIDI", 25,posY);}}

else if (nfoto==1){
image (uno, 0, 0);
uno.resize(500,500);
if (posY < 500){
textSize(80);
fill (#F71616);
 textFont (autor, 80);
text ("Johanna Spyri", 50, posY);}}

 else if (nfoto==2) {
image (dos, 0, 0);
dos.resize(500,500);
if (posX<500){
textSize(25);
fill (#F71616);
textFont (personajes, 25);
 text ("Heidi:, Pedro:", posX, 50);
 text("Clara:",posX,90);
 text ("Abuelito:, Señorita Rottenmeier:", posX, 130);}}
  
  else if(nfoto==3) {
  image (tres, 0, 0);
  tres.resize(500,500);
  if (kp==true && posX<500){
 textSize (25);
   textFont (personajes, 18);
   text ("Abuela de Pedro:, Señora Sessemann:", posX,40);
   text("Brígida:, El señor Sessemann:",posX,70);
  text("El doctor Klassen: ,Sebastián:", posX,100);
   text("Tía Dete:",posX,130);
  text ("Tinette: ,Juan:",posX,160);
  text ("El profesor Usher: Habitantes de Fráncfort ", posX, 190);}}
   
 else if (nfoto==4) {
  image (cuatro, 0, 0);
  cuatro.resize(500,500);
  if (kp==true && posY<500){
   textSize(25);
   textFont (personajes, 25);
   text ("Musica:", 250, posY);}}
 else if (nfoto==5){
      image (cinco, 0, 0);
    cinco.resize(500,500);
    if (kp==true && posY<500){
    textSize(25);
   textFont (personajes, 25);
   text ("Musica:", 250, posY);}}
   
 else if (nfoto==6){
    image (seis, 0, 0);
    seis.resize(500,500);
   if (kp==true && posX<500) {
     textSize(25);
   textFont (personajes, 25);
   text ("direccion de arte:", 250, 100);}}
  else if (nfoto==7){
     image (siete, 0, 0);
    siete.resize(500,500);
   if (kp==true && posX<500){
     textSize(25);
   textFont (personajes, 25);
   text ("Direccion de Arte:", 250, 100);}}}
 void keyPressed (){
   kp=true;
   posX= posX + velocidad;
   posY= posY + velocidad; }
 
   
  void mouseClicked (){
    if (mouseX > 450 && mouseY< 50){
    suma1= true;
    nfoto++;}
    else if (mouseX<50 && mouseY<50){
    resta1= true;
     nfoto--; }
   else if (mouseX>=50 && mouseX<=450 && mouseY>= 50 && mouseY<=500){
   posX=mouseX; posY=mouseY;}}
