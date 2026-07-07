void main() {
  //El listen es para que podamos receber los datos del stream, el que escucha
  //Pero para que el stream funcione necesitamos un bucle infinito o un Future para que el stream no se cierre
  emitNumbers().listen((value) {
    print("Stream value: $value");
  });
}

Stream<int> emitNumbers() {
  //Stream es un objeto con constructores
  //El periodic espera la duracion de periodo de tiempo entre los datos
  //Periodic devuelve numeros cada segundo
  return Stream.periodic(const Duration(seconds: 1), (value) {
    //print("Desde periodic $value");
    return value;
    //El take hace las emisiones por segundos, periodic empieza en 0
  }).take(5);

}
