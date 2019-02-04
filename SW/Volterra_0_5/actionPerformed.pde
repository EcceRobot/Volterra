void actionPerformed (GUIEvent e) {

  for (int i=0; i<NumeroTipiPiante; i++) {
    if (e.getSource() == GUI_ButtonArray[i]) {
      pianta_da_ottimizzare = TipoPiantaArray[i].nome;
      TipoPiantaArray[i].ottimizzare = true;
      init_compatibilita();
    }
  }
  
}