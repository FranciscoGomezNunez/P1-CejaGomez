class AlgaMaster
{
  int x;
  ArrayList <Alga> algas;
  AlgaMaster (int x_)
  {
    x = x_;
    algas = new ArrayList<Alga>();
  }
  
  void display()
  {
     pushMatrix();
    translate(x,height);
    rotate(-PI*0.75);
   
    
    for(int i = algas.size()-1; i >= 0; i--)
   {
     Alga a1 = algas.get(i);
     pushMatrix();
      
     a1.display();
     popMatrix();
   }
  
  
  popMatrix();
  }
  
  void agregar()
  {
    algas.add(new Alga(prx[0],pry[0],px[i_-1],py[j_-1],prx[1],pry[1]));
    
    if(i_>=35 || j_ >= 35)
  {
    i_=1;
    j_=1;
    
    p++;
    
    //planta.rect(0,0,800,800);
  }
  }
}
