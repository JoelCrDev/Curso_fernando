//Los futures son promesas que indican que algo va a pasar mas adelante
void main() async {
  print("Inicio del programa"); 

  await httpGet("https://api.example.com/data")
      .then((value) {
        print(value);
      })
      //El catch error sirve para manejar los errores que suceden
      .catchError((err) {
        print("Error: $err");
      });

  print("Fin del programa");
}

//Future es un tipo de objeto
//Async se usa para que un metodo un funcion va retornar un Future
Future<String> httpGet(String url) async {
  //El await detiene la ejecucion del programa hasta que el Future se complete
  await Future.delayed(const Duration(seconds: 1));

  return "Tenemos un valor en la peticion";
}
