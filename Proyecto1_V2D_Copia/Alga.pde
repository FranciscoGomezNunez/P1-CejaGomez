class Alga
{
  int x1,y1,z1;
  int x2,y2,z2;
  int x3,y3,z3;
  
  Alga(int x1_, int y1_,int x2_, int y2_, int x3_, int y3_)
  {
    x1 = x1_;
    y1 = y1_;
    z1 = x1_;
    x2 = x2_;
    y2 = y2_;
    z2 = x2_;
    x3 = x3_;
    y3 = y3_;
    z3 = x3_;
    
    
  }
  
  void display()
  {
    
   
    noFill();
    
    stroke(135,80,80);
    strokeWeight(30);
    //noStroke();
    bezier(x1,y1,x2,y2,x2,y2,x3,y3);
    //beginShape();
    stroke(150,100,100,6);
    strokeWeight(1);
    bezier(x1,y1,x2,y2,x2,y2,x3,y3);
    strokeWeight(6);
    bezier(x1,y1,x2,y2,x2,y2,x3,y3);
    strokeWeight(18);
    bezier(x1,y1,x2,y2,x2,y2,x3,y3);
    strokeWeight(24);
    bezier(x1,y1,x2,y2,x2,y2,x3,y3);
    //line(x1,y1,x3,y3);
    //strokeWeight(15);
    //line(x1,y1,x3,y3);
    
    
    //endShape();
  }
  
  
}
