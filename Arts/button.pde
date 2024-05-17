class Button {
 color c;
 PVector pos;
 PVector size = new PVector(30,30);
 

 Button(color setC, PVector setPos){
   c = setC;
   pos = setPos;
 }
 
 void render(){
   fill(c);
  rect(pos.x, pos.y , size.x, size.y);
 }
 

 boolean collision(int x, int y){
   if (x > pos.x && x < pos.x+size.x){
     if (y > pos.y && y < pos.y+size.y){
       return true;
     }
   }
   
   
   return false; 
 }
 
 
  
  
  
}
