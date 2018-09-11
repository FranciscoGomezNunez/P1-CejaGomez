int px[] = new int [40];
int py[] = new int [40];

int prx[] = new int [2];
int pry[] = new int [2];

int pi[] = new int [2];
int pj[] = new int [2];

int i_=1;
int j_=1;

int p = 1;

float a;


AlgaMaster al1;
AlgaMaster al2;
AlgaMaster al3;
AlgaMaster al4;
AlgaMaster al5;
AlgaMaster al6;
AlgaMaster al7;


PGraphics planta;

void setup()
{
  
  size (800,800);
  background(255,0,100);
  
  planta = createGraphics(800,800);
  
  
  
  al1 = new AlgaMaster(100);
  al2 = new AlgaMaster(200);
  al3 = new AlgaMaster(300);
  al4 = new AlgaMaster(400);
  al5 = new AlgaMaster(500);
  al6 = new AlgaMaster(600);
  al7 = new AlgaMaster(700);
 
  
  
  for (int i = 0; i<40; i++)
  {
    for (int j = 0;j<40; j++ )
    {
      px[i]=i*20;
      py[j]=j*20;
      
      println(px[i]);
      println(py[j]);
    }
  }
}

void draw()
{
  colorMode(HSB,360,100,100,100);
  
  //background(190,50,90,1);
  background(190,0,100);
  fill(#C9EAFF,15);
  noStroke();
  rect(0,0,800,800);
  fill(#000000,2);
  rect(0,0,800,800);
  
  //#C9EAFF
  /*
  for (int i = 0; i<40; i++){
    for (int j= 0 ;j <40 ; j++){
     
      rect(px[i],py[j],20,20);
    }
  }*/
  a = random(1);
  
  if(i_<35 || j_<35){
  stroke(25,30,125);
  strokeWeight(2);
  
  
  if(i_==0 || j_==0)
  {
    prx[0]=px[i_];
    pry[0]=px[j_];
    i_=1;
    j_=1;
    prx[1]=px[i_];
    pry[1]=px[j_];
  }
  
  //line(px[i_],py[j_],px[i_-1],py[j_-1]);
  
  if (a<0.5)
  {
    pi[0]=i_;
    pj[0]=j_;
    prx[0]=px[i_];
    pry[0]=px[j_];
    i_=pi[0];
    j_=pi[0];
    prx[1]=px[i_];
    pry[1]=px[j_];
    pi[1]=i_;
    pj[1]=j_;
  }
  
  if (a>=0.5 && a<0.7)
  {
    pi[0]=i_;
    pj[0]=j_;
    prx[0]=px[i_];
    pry[0]=px[j_];
    i_++;
    prx[1]=px[i_];
    pry[1]=px[j_];
    pi[1]=i_;
    pj[1]=j_;
  }
  
  if (a>=0.7 && a<0.95)
  {
    pi[0]=i_;
    pj[0]=j_;
    prx[0]=px[i_];
    pry[0]=px[j_];
    j_++;
    prx[1]=px[i_];
    pry[1]=px[j_];
    pi[1]=i_;
    pj[1]=j_;
  }
  if (a>=0.95)
  {
    pi[0]=i_;
    pj[0]=j_;
    prx[0]=px[i_];
    pry[0]=px[j_];
    i_++;
    j_++;
    prx[1]=px[i_];
    pry[1]=px[j_];
    pi[1]=i_;
    pj[1]=j_;
  }
  
  
  
  /*
  planta.beginDraw();
  planta.colorMode(HSB,360,100,100,120);
  planta.stroke(i_+120,100,70+i_);
  planta.noFill();
  planta.strokeWeight(20);
  planta.beginShape();
  planta.bezier(prx[0],pry[0],px[i_-1],py[j_-1],px[i_-1],py[j_-1],prx[1],pry[1]);
  //planta.vertex(prx[0],pry[0]);
  //planta.bezier(prx[0],pry[0],prx[0]/2,pry[0]/2,prx[1]/2,pry[1]/2,prx[1],pry[1]);
  //planta.vertex(prx[1],pry[1]);
  planta.endShape();
  //planta.line(px[i_],py[j_],px[i_-1],py[j_-1]);
  planta.endDraw();
  planta.save("Alga.png");
  */
  
  
  
  
  /*if(i_>=35 || j_ >= 35)
  {
    i_=1;
    j_=1;
    fill(255);
    p+=100;
    //planta.rect(0,0,800,800);
  }*/

  //i_++;
  //j_++;
  }
  
   
  
  
  
  
   
    al1.display();
    al2.display();
    al3.display();
    al4.display();
    al5.display();
    al6.display();
    al7.display();
    
    switch(p)
    {
      case 1:
      al1.agregar();
      break;
      case 2:
      al2.agregar();
      break;
      case 3:
      al3.agregar();
      break;
      case 4:
      al4.agregar();
      break;
      case 5:
      al5.agregar();
      break;
      case 6:
      al6.agregar();
      break;
      case 7:
      al7.agregar();
      break;
      
      
    }
   
 
  
  
  
  
  
  pushMatrix();
  translate(width/2,height);
  rotate(-PI*0.75);
  //image(planta,0,0);
  
  popMatrix();
}
