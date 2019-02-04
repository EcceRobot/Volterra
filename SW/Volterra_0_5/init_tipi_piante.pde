void init_array_piante() {
  for (int i=0; i<NumeroTipiPiante; i++) {
    TipoPiantaArray[i] = new Pianta(proprieta_table.getString(i, "Nome"), proprieta_table.getInt(i, "Diametro"));
  }
}