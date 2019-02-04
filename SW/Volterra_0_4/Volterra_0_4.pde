Pianta pomodoro;
Pianta aglio;
Pianta[][] arrAglio = new Pianta[100][100];
Pianta basilico;
Pianta[][] arrBasilico = new Pianta[100][100];


void setup() {
  size(400, 800);


  pomodoro = new Pianta(200, 200, 200, "pomodoro", #00FF00);
  aglio = new Pianta(300, 100, 200, "aglio", #FF0000);
  basilico = new Pianta(300, 300, 30, "basilico", #0000FF);


  for (int i=0; i<basilico.quantitaX; i++) {
    for (int j=0; j<basilico.quantitaY; j++) {
      arrBasilico[i][j]= new Pianta( int(i*basilico.diametro), j*int(basilico.diametro), int(basilico.diametro), "basilico", basilico.colore);
    }
  }

  for (int i=0; i<aglio.quantitaX; i++) {
    for (int j=0; j<aglio.quantitaY; j++) {
      arrAglio[i][j]= new Pianta( int(i*aglio.diametro), j*int(aglio.diametro), int(aglio.diametro), "aglio", aglio.colore);
    }
  }

  println("Aglio lungo x: " + aglio.quantitaX);
  println("Aglio lungo y: " + aglio.quantitaY);
  println("Basilico lungo x: " + basilico.quantitaX);
  println("Basilico lungo y: " + basilico.quantitaY);
  println("\n\n\n\n\n\n\n");

  // controllo overlap tra tutte le piante
  for (int x2=0; x2<basilico.quantitaX; x2++) {
    for (int y2=0; y2<basilico.quantitaY; y2++) {
      for (int x1=0; x1<aglio.quantitaX; x1++) {
        for (int y1=0; y1<aglio.quantitaY; y1++) {
          arrAglio[x1][y1].overlap(arrBasilico[x2][y2]);
        }
      }
    }
  }
}

void draw() {
  background(100);

  for (int x2=0; x2<basilico.quantitaX; x2++) {
    for (int y2=0; y2<basilico.quantitaY; y2++) {
      arrBasilico[x2][y2].display();
    }
  }

  for (int x1=0; x1<aglio.quantitaX; x1++) {
    for (int y1=0; y1<aglio.quantitaY; y1++) {
      arrAglio[x1][y1].display();
    }
  }
}