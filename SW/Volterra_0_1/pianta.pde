class Pianta {

  //  Attributi
  float posX;
  float posY;
  float diametro;
  color colore;
  String nome;
  boolean presenza;


  //  Constructor
  Pianta(int tempPosX, int tempPosY, int tempDiametro, String tempNome, color tempColore ) {
    diametro = tempDiametro;
    posX = tempPosX;
    posY = tempPosY;
    colore = tempColore;
    nome = tempNome;
    presenza = true;
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
    } else {
      altraPianta.presenza=true;
    }
  }
}