void main() async {
  print("Inicio del programa");

  try {
    final value = await peticionHttp("https://api.example.com/data");

    print("Existoso $value");
    
  } catch (err) {
    print("Tenemos el error: $err");
  }

  //No continuara a menos que termine la funcion
  //Await le ice que esper eel resultado del metodo

  print("Fin del programa");
}

Future<String> peticionHttp(String url) async {

  //Podemos controlar las throw con los ifs
  if (url.isEmpty) {
    throw "No tenemos la URL";
  }

  //El await detiene la ejecucion del programa hasta que el Future se complete
  await Future.delayed(Duration(seconds: 1));

  //throw "Error en la peticion";

  return "Tenemos el valor de la peticion";
}
