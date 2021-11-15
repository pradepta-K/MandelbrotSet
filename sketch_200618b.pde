float val_1 = 2.5;
float val_2= 2.5;
int maxiterations = 100;
void setup(){
  size(900, 900);
}

void draw(){
  loadPixels();
  for(int x = 0; x < width; x++){
    for(int y = 0; y < height; y++){
      float a = map(x, 0, width, -val_1, val_2);
      float b = map(y, 0, height, -val_1, val_2);
      
      float ca = a;
      float cb = b;
      
      int n = 0;
      
      while(n < maxiterations){
        float aa = a*a - b*b;
        float bb = 2*a*b;
        a = aa + ca;
        b = bb + cb;
        if(a + b > 16)
        break;
        n++;
      }
      
      float bright = map(n, 0, maxiterations, 0, 1);
      bright = map(sqrt(bright), 0, 1, 0, 255);
      
      pixels[x + y*width] = color(bright);
    }
  }
  updatePixels();
  val_1 = val_1 - 0.01;
  val_2 = val_2 - 0.007;
}
        
      
        
    
      
      
    
