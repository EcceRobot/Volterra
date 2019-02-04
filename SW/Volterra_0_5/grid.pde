void grid() {
  pushStyle();
  
  stroke(250, 250);
  strokeWeight(0.1);
  
  for (int i=1; i<16; i++) {
    line(i*width/16, 0, i*width/16, height );
  }
  
  for (int i=1; i<9; i++) {
    line(0, i*height/9, width, i*height/9);
  }
  
  popStyle();
}