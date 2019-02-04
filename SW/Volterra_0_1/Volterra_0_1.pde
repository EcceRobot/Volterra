Pianta pomodoro;
Pianta aglio;
Pianta basilico;


void setup() {
  size(400, 800);

  //Pianta(int tempPosX, tempPosY, int tempDiametro, String tempNome, color tempColore )
  pomodoro = new Pianta(200, 200, 100, "pomodoro", #00FF00);
  aglio = new Pianta(300, 300, 40, "aglio", #0000FF);
  basilico = new Pianta(100, 500, 20, "basilico", #00FFFF);
}


void draw() {
  pomodoro.posX = mouseX;
  pomodoro.posY = mouseY;

  background(#C4874D);   //color terreno
  pomodoro.overlap(aglio);
  pomodoro.overlap(basilico);

  pomodoro.display();
  aglio.display();
  basilico.display();
}