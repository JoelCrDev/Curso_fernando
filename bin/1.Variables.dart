

void main(List<String> arguments) {
  final String nombre = 'Joelito';
  final int numero = 10;
  bool? esVerdadero;
  //Dos tipos basicos de hacer para listas
  final List<String> valores = ["Jugar", "Comer", "Dormir"];
  final valores2 = <String>["Jugar", "Comer", "Dormir"];

  //dynamic por defecto en nulo

  dynamic variableDinamica = "Hola";
  variableDinamica = 123;
  variableDinamica = true;
  variableDinamica = null;
  variableDinamica = [1, 2, 3];

  print("""
  $nombre
  $numero
  $esVerdadero
  $valores
  $valores2
  $variableDinamica
""");
}
