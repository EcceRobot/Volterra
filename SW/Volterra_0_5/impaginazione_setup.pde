void impaginazione_setup() {
  pushStyle();
  
  //inizializzo elementi Interfascia
  GUI_C = new GUIController(this);
  GUI_RC = new IFRadioController("Selezione pianta");
  
  for(int i=0; i<NumeroTipiPiante; i++){
  GUI_ButtonArray[i] = new IFRadioButton(proprieta_table.getString(i,"Nome"), 20,height/9+ i*20, GUI_RC);
  GUI_C.add(GUI_ButtonArray[i]);
  }
  
  //elementi Interfascia interattivi richiedono di essere messi in "ascolto"
  GUI_RC.addActionListener(this);
  
  popStyle();
}