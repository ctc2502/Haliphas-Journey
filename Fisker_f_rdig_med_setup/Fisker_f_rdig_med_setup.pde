//ArrayList<Fisk> Fiskliste = new ArrayList<Fisk>();

Fisk f;
Fiskermand  Fm;

void setup(){
  size(1000,1000);
  f = new Fisk();
  Fm = new Fiskermand();
}

void draw(){
  
  //for(int i=0; i<Fiskliste.size(); i++){    Fisk f = Fiskliste.get(i);
  
  
  
 
  fill(0,250,250);
  rect(0,0,1000,200);
  
  fill(10,250,10);
  rect(0,200,1000,800);
  
  fill(100,50,0);
  rect(50,180,400,10);
  
  fill(50,50,250);
  arc(500, 200, 800, 800, 0, PI);
  
  f.tegn();
    f.hastighed();
  f.kanter();
  
  Fm.tegnmand();

}

void mousePressed(){
 f.fangfisk(); 
}
