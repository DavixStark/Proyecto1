personaje j1;
personaje j2;
personaje pers;

int ventanas = 0;
boolean r1, r2;
int pe, PE;
int ta = 1;
float dt;

void setup(){
  size(800,600);
  j1 = new personaje(20,200);
  j2 = new personaje(20,200);
  pers = new personaje();
}
void draw(){
  switch(ventanas){
    case 0:
    pushMatrix();
      dt+=0.009;
  background(0);
  noStroke();
  for(int i= 0;i<width;i+=3){
    for(int j = 0; j<height;j+=3){
      fill(noise(i*0.01+dt,j*0.001,dt)*0,noise(i*0.01+dt*1,j*0.01+1,dt)*0,noise(i*0.01+dt*2,j*0.01*2,dt)*120);
      rect(i,j,10,10);
    }
  }
  PFont d = createFont("Georgia",75);
    String c = "Guerreros de Zexen";
    textFont(d);
    textSize(85);
    fill(255,255,255,100);
    text(c,30,250);
    textSize(40);
    fill(255);
    text("Presiona Z para comenzar",180,380);
    textSize(17);
    fill(255);
    text("Programacion Orientada a Objetos - all rights reserved - 2018",175,590);
    if(key == 'z' || key == 'Z'){
    ventanas = 1;
    }
    popMatrix();
    break;
    
    case 1:
    pushMatrix();
    dt+=0.009;
  background(0);
  noStroke();
  for(int i= 0;i<width;i+=3){
    for(int j = 0; j<height;j+=3){
      fill(noise(i*0.01+dt,j*0.001,dt)*0,noise(i*0.01+dt*1,j*0.01+1,dt)*0,noise(i*0.01+dt*2,j*0.01*2,dt)*120);
      rect(i,j,10,10);
    }
  }
    textSize(30);
    fill(255);
    text("Elije a tu Personaje", 280, 50);
    textSize(25);
    text("Jugador Uno Blanco",300,500);
    fill(255,0,0);
    text("Jugador Dos Rojo",310,550);
    textSize(40);
    scale(0.6);
    
    pers.draw_guerrero1(100,100);
    fill(255);
    text("Presiona a", 100,425);
    fill(255,0,0);
    text("Presiona q", 100,475);
    
    pers.draw_guerrero2(150,100);
    fill(255);
    text("Presiona s", 380,550);
    fill(255,0,0);
    text("Presiona w", 380,600);
    
    pers.draw_guerrero3(200,100);
    fill(255);
    text("Presiona d", 1080,425);
    fill(255,0,0);
    text("Presiona e", 1080,475);
    
    pers.draw_guerrero4(100,200);
    fill(255);
    text("Presiona f", 100,930);
    fill(255,0,0);
    text("Presiona r", 100,980);
    
    pers.draw_guerrero5(150,200);
    fill(255);
    text("Presiona g", 780,550);
    fill(255,0,0);
    text("Presiona t", 780,600);
    
    pers.draw_guerrero6(200,200);
    fill(255);
    text("Presiona h", 1080,930);
    fill(255,0,0);
    text("Presiona y", 1080,980);
    scale(1);
    
    if(keyPressed){
    switch(key){
      case 'a':
      r1 = true;
      pe = 0;
      break;
      
      case 's':
      r1 = true;
      pe = 1;
      break;
      
      case 'd':
      r1 = true;
      pe = 2;
      break;
      
      case 'f':
      r1 = true;
      pe = 3;
      break;
      
      case 'g':
      r1 = true;
      pe = 4;
      break;
      
      case 'h':
      r1 = true;
      pe = 5;
      break;
    }
    }
    
    if(keyPressed){
    switch(key){
      case 'q':
      r2 = true;
      PE = 0;
      break;
      
      case 'w':
      r2 = true;
      PE = 1;
      break;
      
      case 'e':
      r2 = true;
      PE = 2;
      break;
      
      case 'r':
      r2 = true;
      PE = 3;
      break;
      
      case 't':
      r2 = true;
      PE = 4;
      break;
      
      case 'y':
      r2 = true;
      PE  = 5;
      break;
    }
    }
    
    if (r1 && r2){
      ventanas = 2;
    }
    popMatrix();
    break;
    
    case 2:
    pushMatrix();
    dt+=0.009;
  background(0);
  noStroke();
  for(int i= 0;i<width;i+=3){
    for(int j = 0; j<height;j+=3){
      fill(noise(i*0.01+dt,j*0.001,dt)*0,noise(i*0.01+dt*1,j*0.01+1,dt)*0,noise(i*0.01+dt*2,j*0.01*2,dt)*120);
      rect(i,j,10,10);}
  }
  stroke(255);
  strokeWeight(10);
  fill(#08298A);
  rect(400,520,790,150);
  noStroke();
  fill(#088A4B);
  rect(400,340,1000,200);
  fill(255);
  textSize(30);
  text("HP 1: ",40,500);
  text(j1.v,150,500);
  text("Jugador Uno Presiona X",420,500);
  fill(255);
  textSize(30);
  text("HP 2: ",40,560);
  text(j2.v,150,560);
  text("Jugador Dos Presiona P",420,560);
  scale(.8);
  fill(0,0,0,180);
  triangle(0,300,100,200,200,300);
  triangle(170,300,300,150,430,300);
  triangle(400,300,480,250,580,300);
  triangle(560,300,720,130,880,300);
  triangle(860,300,980,120,1100,300);
  noStroke();
  fill(#585858);
  beginShape();
  vertex(730,400);
  vertex(730,150);
  vertex(780,150);
  vertex(780,220);
  vertex(820,220);
  vertex(820,150);
  vertex(870,150);
  vertex(870,220);
  vertex(910,220);
  vertex(910,150);
  vertex(960,150);
  vertex(960,400);
  endShape();
  fill(0);
  rect(850,340,80,120);
  
    switch(pe){
      case 0:
       translate(0,130);
      j1.draw_guerrero1(0,0);
      break;
      
      case 1:
       translate(-250,30);
      j1.draw_guerrero2(0,0);
      break;
      
      case 2:
       translate(-600,50);
      j1.draw_guerrero3(0,0);
      break;
      
      case 3:
      translate(-10,-350);
      j1.draw_guerrero4(0,0);
      break;
      
      case 4:
       translate(-350,-400);
      j1.draw_guerrero5(0,0);
      break;
      
      case 5:
      translate(-350,100);
      j1.draw_guerrero6(0,0);
      break;
    }
    
    popMatrix();
    pushMatrix();

    switch(PE){
      case 0:
       translate(480,105);
       scale(0.8);
      j2.draw_guerrero1(0,0);
      break;
      
      case 1:
        translate(200,20);
        scale(.8);
      j2.draw_guerrero2(0,0);
      break;
      
      case 2:
      translate(-30,40);
      scale(0.8);
      j2.draw_guerrero3(0,0);
      break;
      
      case 3:
      translate(480,-290);
      scale(0.8);
      j2.draw_guerrero4(0,0);
      break;
      
      case 4:
       translate(90,-200);
      j2.draw_guerrero5(0,0);
      break;
      
      case 5:
      translate(-220,-200);
      j2.draw_guerrero6(0,0);
      break;
    }
    popMatrix();
    if (ta == 1){
    if(keyPressed){
      if(key == 'x' || key == 'X'){
        j2.v = j2.v - j1.a;
        ta = 2;
      }
    }
    }
    if (ta == 2){
    if(keyPressed){
      if(key == 'p' || key == 'P'){
        j1.v = j1.v - j2.a;
        ta = 1;
      }
    }
    }
    if(j1.v==0 || j2.v==0){
      ventanas = 3;
    }
    //popMatrix();
    break;
    
    case 3:
    dt+=0.009;
  background(0);
  noStroke();
  for(int i= 0;i<width;i+=3){
    for(int j = 0; j<height;j+=3){
      fill(noise(i*0.01+dt,j*0.001,dt)*0,noise(i*0.01+dt*1,j*0.01+1,dt)*0,noise(i*0.01+dt*2,j*0.01*2,dt)*120);
      rect(i,j,10,10);
    }
  }
    textSize(70);
    fill(255,255,255,120);
    if(j1.v > 0){
      text("Ganaste! Jugador Uno!",25,150);
    }
    if(j2.v > 0){
      text("Ganaste! Jugador Dos!",35,150);
    }
    textSize(30);
    fill(255,255,255,120);
    text("Presiona C para volver a inicio",200,300);
    text("Presiona V para volver a pelear",200,400);
    text("Presiona B para volver a la pantalla de seleccion",90,500);
    if(key == 'c' || key == 'C'){
      ventanas = 0;
      r1 = false;
      r2 = false;
      j1.v = 200;
      j2.v = 200;
      ta = 1;
    }
    if(key == 'v' || key == 'V'){
      ventanas = 2;
      j1.v = 200;
      j2.v = 200;
      ta = 1;
    }
    
    if(key == 'b' || key == 'B'){
      ventanas = 1;
      r1 = false;
      r2 = false;
      j1.v = 200;
      j2.v = 200;
      ta = 1;
    }
   //break;
    
  }
}

class personaje{
  int a;
  int v;
  
  personaje(int a_, int v_){
  a = a_;
  v = v_;
  }
  
  personaje(){
  }
  
void draw_guerrero1(int x, int y) {
  rectMode(CENTER);
  pushMatrix();
 fill(200,0,0);
 rect(200,300,120,50);
 rect(200,300,60,80);
 fill(#f4cc8e);
 rect(190,210,60,70);
 fill(0);
 rect(180,200,10,25);
 fill(200,0,0);
 rect(195,250,110,50);
 fill(#f4cc8e);
 rect(150,260,40,30);
 fill(#f4cc8e);
 rect(215,260,30,30);
 fill(200,0,0);
 rect(190,260,30,30);
 fill(255);
 rect(220,205,6,60);
 fill(255);
 rect(232,195,28,65);
 fill(255);
 rect(250,210,15,40);
 fill(255);
 rect(240,225,45,20);
 fill(200,0,0);
 rect(155,181,65,12);
 fill(200,0,0);
 rect(185,170,85,12);
 fill(200,0,0);
 rect(209,155,100,20);
 fill(200,0,0);
 rect(220,140,100,12);
 fill(200,0,0);
 rect(210,140,80,65);
 fill(200,0,0);
 rect(215,100,50,16);
 fill(200,0,0);
 rect(220,90,30,16);
  popMatrix();
}
void draw_guerrero2(int x, int y) {
  rectMode(CENTER);
  pushMatrix();
  fill(255);
 rect(470,280,130,50);
 rect(490,250,130,50);
 rect(530,220,100,50);
 rect(490,370,130,130);
 rect(430,440,70,20);
 rect(530,440,50,20);
 fill(#F7BE81);
 rect(470,310,70,70);
 rect(410,360,30,30);
 rect(530,360,30,30);
 fill(0);
 rect(455,300,30,10);
 rect(455,310,10,30);
 fill(#BDBDBD);
 rect(470,360,70,30);
 rect(470,370,50,30);
 rect(470,385,30,30);
 rect(530,350,10,200);
 rect(530,250,30,40);
  popMatrix();
}

void draw_guerrero3(int x, int y) {
  rectMode(CENTER);
  pushMatrix();
  fill(#F7BE81);
  rect(880,250,130,100);
  rect(770,315,30,30);
  fill(#0B173B);
  rect(880,360,130,120);
  rect(860,370,30,30);
  rect(800,315,30,30);
  fill(#BDBDBD);
  rect(705,315,100,30);
  rect(950,360,80,80);
  fill(#3B170B);
  rect(870,215,150,30);
  rect(915,265,60,70);
  rect(920,445,50,50);
  rect(840,445,50,50);
  rect(800,455,30,30);
  fill(0);
  rect(830,250,30,10);
  rect(830,265,10,20);

  popMatrix();
}

void draw_guerrero4(int x, int y){
  rectMode(CENTER);
  pushMatrix();
 fill(#FF4000);
 rect(110,650,10,30);
 rect(180,600,150,80);
 rect(230,650,50,80);
 fill(255,0,0);
 rect(180,720,130,60);
 fill(#F7BE81);
 rect(175,660,70,70);
 fill(0);
 rect(160,660,10,30);
 rect(160,650,30,10);
 rect(180,640,20,10);
 fill(255,0,0);
 rect(180,780,70,130);
 rect(140,840,30,10);
 fill(#F7BE81);
 rect(200,730,30,30);
 rect(110,730,30,30);
 rect(180,790,70,10);
 
  popMatrix();
}

void draw_guerrero5(int x, int y){
  rectMode(CENTER);
  pushMatrix();
fill(#0B610B);
rect(1180,600,130,70);
rect(1180,750,130,100);
rect(1140,620,130,30);
rect(1140,715,130,30);
fill(0);
rect(1225,830,40,60);
rect(1135,830,40,60);
rect(1125,850,60,30);
fill(#F7BE81);
rect(1180,667,130,65);
rect(1060,715,30,30);
fill(0,0,255);
rect(1030,715,30,200);
rect(1000,715,30,30);
fill(0);
rect(1130,645,30,10);
rect(1130,655,10,30);


  popMatrix();
}

void draw_guerrero6(int x, int y){
  rectMode(CENTER);
  pushMatrix();
  
  fill(#424242);
rect(1180,100,180,70);
rect(1180,250,130,100);
rect(1140,120,130,30);
rect(1140,215,130,30);
fill(0);
rect(1225,330,40,60);
rect(1135,330,40,60);
rect(1125,350,60,30);
fill(#F7BE81);
rect(1180,167,130,65);
rect(1060,215,30,30);
fill(0);
rect(1030,215,30,200);
fill(#424242);
rect(1005,130,80,80);
fill(0);
rect(1130,145,30,10);
rect(1130,155,10,30);
fill(#424242);
rect(1235,150,70,70);

  popMatrix();
}
}
