void main() async {
  print("Inicio del programa");

  try {
    final value = await peticionHttp("https://api.example.com/data");

    print("Existoso $value");
    //Podemos usar el on para especificar el tipo de error que queremos manejar
    //Hay que poner el on antes del catch porque si no se ejecuta el catch primero
    //Si ponemos catch(err) podremos leer el error en el catch
  } on Exception catch(err) {
    print("Tenemos una exepcion: $err");

    //Si entra al on el catch no se ejecuta
  } catch (err) {
    print("Tenemos el error: $err");

    //El finally se ejecuta siempre al final, sea error o no
  } finally {
    print("Fin del try catch");
  }

  //No continuara a menos que termine la funcion
  //Await le ice que esper eel resultado del metodo

  print("Fin del programa");
}

Future<String> peticionHttp(String url) async {
  //El await detiene la ejecucion del programa hasta que el Future se complete
  await Future.delayed(Duration(seconds: 1));

  throw Exception("No hay parametros en la URL");

  //throw "Error en la peticion";

  //return "Tenemos el valor de la peticion";
}
