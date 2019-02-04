void init_compatibilita() {
  if (pianta_da_ottimizzare != null ) {
    for (int i=0; i<NumeroTipiPiante; i++) {
      TipoPiantaArray[i].compatibilita = compatibilita_table.getInt(i, pianta_da_ottimizzare);
      println(TipoPiantaArray[i].compatibilita);
    }
  }
}