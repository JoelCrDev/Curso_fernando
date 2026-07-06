void main (){
  final numeros = [1,2,3,4,5,6,7,4,23,23,32,12,1,2,3,2,1];
  print('Lista original $numeros');
  print('Lista original ${numeros.length}');
  print(numeros.first);
  
  //Los pone en ()
  print(numeros.reversed);
  //Devuelve un iterable
  final reversednumeros = numeros.reversed;
  print('Iterable: $reversednumeros');
  print('Lista: ${reversednumeros.toList()}');  
  print('Set: ${reversednumeros.toSet()}');
  //El where devuelve un iterable, el toList lo convierte a lista
  final numerosgrandes = numeros.where((numero) {
    return numero > 5;
  });

  print('Numeros grandes: $numerosgrandes');
  print('Numeros grandes como set: ${numerosgrandes.toSet()}');
}