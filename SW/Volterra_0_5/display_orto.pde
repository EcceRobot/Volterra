void display_orto(){
  pushStyle();
  stroke(#792314);
  strokeWeight(4);
  rect(width*8/16, 0.05*height, largh_orto, lungh_orto, 10);
  stroke(0);
  text(largh_orto, width*8/16, 0.04*height);
  text(lungh_orto, width*7.5/16, .1*height);
  popStyle();
}