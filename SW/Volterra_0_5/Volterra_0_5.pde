// Librerie
import interfascia.*;

// Variabili globali
GUIController GUI_C;
IFRadioController GUI_RC;
IFRadioButton[] GUI_ButtonArray = new IFRadioButton[100];
Pianta[] TipoPiantaArray = new Pianta[100];
int NumeroTipiPiante;
int largh_orto=450;
int lungh_orto=600;
Table compatibilita_table, proprieta_table;
String pianta_da_ottimizzare;


void setup() {

  size(1200, 675);

  compatibilita_table = loadTable("compatibilita.csv", "header");
  proprieta_table = loadTable("proprieta.csv", "header");
  NumeroTipiPiante = proprieta_table.getRowCount();

  init_array_piante();
  impaginazione_setup();

}

void draw() {
  background(#7DADF7);
  grid();
  impaginazione_draw();
  display_orto();  
  init_compatibilita();
}