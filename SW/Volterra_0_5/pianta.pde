/**
 Ogni pianta sarà caratterizzata dalle proprietà estrate dala tabella CSV
 verranno valutati in base alle informazioni fornite dall'utente 
 la quantità di piante che saranno presenti per ogni singolo tipo 
 e le posizioni di ogni esemplare nell'array pos_array
 */

class Pianta {

  //  Attributi
  String nome;
  float diametro;
  float area;
  color colore;
  int quantita;
  int[][] pos_x_y = new int[1000][1000];
  float compatibilita;
  int mese_semina;
  boolean ottimizzare;


  //  Costruttori

  Pianta( String tempNome, int tempDiametro) {
    diametro = tempDiametro;
    area = 2 * PI * pow(tempDiametro/2, 2);
    colore = color(random(255),random(255),random(255));
    nome = tempNome;
  }


  //  Metodi

  void display() {
    //solo se è possiblie mostrarla
    println(this.nome);
    if (quantita>0) {         
      
    }
  }

/*  void overlap(Pianta altraPianta) {
    if (dist(this.posX, this.posY, altraPianta.posX, altraPianta.posY) < (this.diametro/2 + altraPianta.diametro/2) ) {
      altraPianta.presenza=false;
    }
  }  
*/
}