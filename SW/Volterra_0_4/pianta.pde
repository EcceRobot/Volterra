class Pianta {

  //  Attributi
  float posX;
  float posY;
  float diametro;
  float area;
  color colore;
  String nome;
  boolean presenza;
  int quantitaX;
  int quantitaY;
  float compatibilita;
  int mese_semina;


  //  Constructor
  Pianta(int tempPosX, int tempPosY, int tempDiametro, float tempCompatibilita, String tempNome, color tempColore ) {
    diametro = tempDiametro;
    area = 2 * PI * pow(tempDiametro/2, 2);
    compatibilita = tempCompatibilita;
    posX = tempPosX;
    posY = tempPosY;
    colore = tempColore;
    nome = tempNome;
    presenza = true;
    quantitaX = int(width/diametro);
    quantitaY = int(height/diametro);
  }


  //  Metodi

  void display() {
    //solo se è possiblie mostrarla
    if (presenza) {         
      fill(colore);
      ellipse(posX, posY, diametro, diametro);
      fill(0);
      text(nome, posX, posY);
    }
  }

  void overlap(Pianta altraPianta) {
    if (dist(this.posX, this.posY, altraPianta.posX, altraPianta.posY) < (this.diametro/2 + altraPianta.diametro/2) ) {
      altraPianta.presenza=false;
    }
  }
}