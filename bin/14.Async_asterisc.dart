void main() {
  emmitNumber().listen((int value) {
    print("Stream valor: $value");
  });
}

//El async* dice que una funcion va retornar un stream
Stream<int> emmitNumber() async* {
  final valuesToEmit = [1, 2, 3, 4, 5, 6];

  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    //Los yield son como los return, pero solo funcionan en streams
    //No se puede usar return dentro de una funcion async*
    yield i;
  }
}
